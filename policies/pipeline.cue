package tekton


#Description: "This pipeline clones a git repo, then echoes the README file to the stout."
#Params: {[{
	name:        "repo-url"
	type:        "string"
	description: "The git repo URL to clone from."
}, {
	name: "revision"
	type: "string"
}, {
	name:        "PARAM_SCM"
	description: "Define the Source code Management URL"
	type:        "string"
	default:     "github.com"
}, {
	name:        "pathToContext"
	description: "The path to the build context, used bThis pipeline clones a git repo, then echoes the README file to the stout.y Kaniko - within the workspace"
	default:     "."
}, {
	name:        "imageUrl"
	description: "Image name including repository"
}, {
	name:        "imageTag"
	description: "Image tag"
	default:     "latest"
}, {
	name:        "eventname"
	description: "name of event happens"
}, {
	name:        "reponame"
	description: "repo name"
}, {
	name:        "retag"
	description: "rel tag"
}, {
	name:        "ID"
	description: "id of pipelinerun"
}, {
	name:        "userEmail"
	description: "email of the user"
	default:     "example@gmail.com"
}, {
	name:        "NAME"
	description: "application name"
}]}

#WorkspaceDeclerations: {[{
	name: "shared-data"
	description: """
		This workspace contains the cloned repo files, so they can be read by the
		next task.

		"""
}, {
	name:        "git-credentials"
	description: "basic-auth"
}, {
	name:        "docker-credentials"
	description: "docker cred"
}, {
	name: "cosign"
}, {
	name: "dockerconfig"
}, {
	name: "cosign-pub"
}, {
	name:        "deploy-creds"
	description: "app and cluster details"
}, {
	name:        "argo-creds"
	description: "argocd server and credentials"
}]}

#Tasks: {[{
	name: "fetch-source"
	taskRef: {
		name: "git-clone"
		kind: "ClusterTask"
	}
	workspaces: [{
		name:      "output"
		workspace: "shared-data"
	}, {
		name:      "basic-auth"
		workspace: "git-credentials"
	}]
	params: [{
		name:  "url"
		value: "$(params.repo-url)"
	}, {
		name:  "PARAM_SCM"
		value: "$(params.PARAM_SCM)"
	}, {
		name:  "revision"
		value: "$(params.revision)"
	}]
}, {
	name: "build"
	taskRef: {
		name: "kaniko"
		kind: "ClusterTask"
	}
	runAfter: ["fetch-source"]
	workspaces: [{
		name:      "source"
		workspace: "shared-data"
	}, {
		name:      "dockerconfig"
		workspace: "docker-credentials"
	}]
	params: [{
		name:  "CONTEXT"
		value: "$(params.pathToContext)"
	}, {
		name:  "IMAGE"
		value: "$(params.imageUrl):$(params.imageTag)"
	}]
}, {
	name: "deploy-app"
	runAfter: ["cosign-sign"]
	taskRef: {
		name: "deploy"
		kind: "ClusterTask"
	}
	params: [{
		name:  "NAME"
		value: "$(params.NAME)"
	}, {
		name:  "userEmail"
		value: "$(params.userEmail)"
	}, {
		name:  "IMAGE"
		value: "$(params.imageUrl)"
	}, {
		name:  "ImageTag"
		value: "$(params.imageTag)"
	}]
	workspaces: [{
		name:      "basic-auth"
		workspace: "deploy-creds"
	}, {
		name:      "output"
		workspace: "shared-data"
	}, {
		name:      "argo-auth"
		workspace: "argo-creds"
	}]
}, {
	name: "qt-testcase"
	runAfter: ["deploy-app"]
	taskRef: {
		name: "install-and-run-qt"
		kind: "ClusterTask"
	}
	params: [{
		name:  "QT_SERVER"
		value: "http://quality-trace/demoagent.optimizor.app/"
	}]
	workspaces: [{
		name:      "basic-auth"
		workspace: "git-credentials"
	}, {
		name:      "output"
		workspace: "shared-data"
	}]
}, {
	name: "cosign-sign"
	runAfter: ["build"]
	taskRef: {
		name: "cosign-sign"
		kind: "ClusterTask"
	}
	workspaces: [{
		name:      "source"
		workspace: "shared-data"
	}, {
		name:      "dockerconfig"
		workspace: "dockerconfig"
	}, {
		name:      "cosign"
		workspace: "cosign"
	}]
	params: [{
		name:  "image"
		value: "$(params.imageUrl)@$(tasks.build.results.IMAGE_DIGEST)"
	}, {
		name:  "eventname"
		value: "$(params.eventname)"
	}]
	when: [{
		input:    "$(params.eventname)"
		operator: "in"
		values: ["push", "tag", "release"]
	}]
}]}

#Finally: {[{
	name: "github-set-status-fail"
	when: [{
		input:    "$(tasks.status)"
		operator: "in"
		values: ["Failed", "None"]
	}]
	taskRef: {
		name: "github-set-status"
		kind: "ClusterTask"
	}
	params: [{
		name:  "STATE"
		value: "failure"
	}, {
		name:  "GITHUB_HOST_URL"
		value: "api.github.com"
	}, {
		name:  "REPO_FULL_NAME"
		value: "$(params.reponame)"
	}, {
		name:  "GITHUB_TOKEN_SECRET_NAME"
		value: "gitcred-capten-pipeline"
	}, {
		name:  "GITHUB_TOKEN_SECRET_KEY"
		value: "password"
	}, {
		name:  "SHA"
		value: "$(params.revision)"
	}, {
		name:  "TARGET_URL"
		value: "http://tekton.demoagent.optimizor.app/#/namespaces/tekton-pipelines/pipelineruns/trigger-$(params.ID)"
	}, {
		name:  "CONTEXT"
		value: "tekton-pipeline"
	}, {
		name:  "DESCRIPTION"
		value: "An error occurred building your commit in Tekton"
	}]
}, {
	name: "github-set-status-success"
	when: [{
		input:    "$(tasks.status)"
		operator: "in"
		values: ["Succeeded", "Completed"]
	}]
	taskRef: {
		name: "github-set-status"
		kind: "ClusterTask"
	}
	params: [{
		name:  "STATE"
		value: "success"
	}, {
		name:  "GITHUB_HOST_URL"
		value: "api.github.com"
	}, {
		name:  "REPO_FULL_NAME"
		value: "$(params.reponame)"
	}, {
		name:  "GITHUB_TOKEN_SECRET_NAME"
		value: "gitcred-capten-pipeline"
	}, {
		name:  "GITHUB_TOKEN_SECRET_KEY"
		value: "password"
	}, {
		name:  "SHA"
		value: "$(params.revision)"
	}, {
		name:  "TARGET_URL"
		value: "http://tekton.demoagent.optimizor.app/#/namespaces/tekton-pipelines/pipelineruns/trigger-$(params.ID)"
	}, {
		name:  "CONTEXT"
		value: "tekton-pipeline"
	}, {
		name:  "DESCRIPTION"
		value: "Finished building your commit in Tekton"
	}]
}]}

#Metadata: {
	name:      string | *#Name
	namespace: "tekton-pipelines"
}

#Name:
	name: "capten-pipeline"
