package tekton

#Params: {[{
	name:        "NAME"
	description: "application name"
}, {
	name: "IMAGE"
}, {
	name: "ImageTag"
}, {
	name:        "userEmail"
	description: "User email for Git configuration"
	type:        "string"
}]

}

#Description: "The git repo will be cloned onto the volume backing this Workspace."

#Name: "deploy"

#Metadata: {
	name: string | *#Name
}

#WorkspaceDeclerations: {[{
	name:        "output"
	description: "The git repo will be cloned onto the volume backing this Workspace."
}, {
	name:     "ssh-directory"
	optional: true
	description: """
		A .ssh directory with private key, known_hosts, config, etc. Copied to
		the user's home before git commands are executed. Used to authenticate
		with the git remote when performing the clone. Binding a Secret to this
		Workspace is strongly recommended over other volume types.

		"""
}, {
	name:     "basic-auth"
	optional: true
	description: """
		A Workspace containing a .gitconfig and .git-credentials file. These
		will be copied to the user's home before any git commands are run. Any
		other files in this Workspace are ignored. It is strongly recommended
		to use ssh-directory over basic-auth whenever possible and to bind a
		Secret to this Workspace over other volume types.

		"""
}, {
	name:     "argo-auth"
	optional: true
	description: """
		A Workspace containing a argocd server and credentials.

		"""
},]
}

#Steps: {[{
	name:  "clone-repo"
	image: "ghcr.io/kube-tarian/helmrepo-supporting-tools/git:v2.26.2"
	script: """
		echo \"Cloning the repository...\"
		export GIT_USERNAME=`cat /workspace/basic-auth/GIT_USER_NAME`
		export GIT_TOKEN=`cat /workspace/basic-auth/GIT_TOKEN`
		export gitProjectUrl=`cat /workspace/basic-auth/GIT_PROJECT_URL`

		git clone https://${GIT_USERNAME}:${GIT_TOKEN}@${gitProjectUrl} /workspace/source

		"""
}, {
	name:       "update-yaml"
	image:      "ghcr.io/kube-tarian/helmrepo-supporting-tools/git:v2.26.2"
	workingDir: "/workspace/source"
	script: """
		#!/usr/bin/env sh
		set -e

		export DIRECTORY=`cat /workspace/basic-auth/APP_CONFIG_PATH`
		VALUES_FILE=\"${DIRECTORY}/values/$(inputs.params.NAME)-values.yaml\"

		echo \"updating image tag to $(inputs.params.ImageTag)\"
		sed -i \"s#$(inputs.params.IMAGE):[a-zA-Z0-9]\\\\+#$(inputs.params.IMAGE):$(inputs.params.ImageTag)#\" \"$VALUES_FILE\"

		# Update the tag for the structure: tag: \"\"
		sed -E -i \"s#(tag:)\\s*\\\"?[^\\\"]*\\\"?#\\1 \\\"$(inputs.params.ImageTag)\\\"#\" \"$VALUES_FILE\"

		"""
}, {
	name:  "commit-push-changes-gitops"
	image: "ghcr.io/kube-tarian/helmrepo-supporting-tools/git:v2.26.2"
	env: [{
		name:  "USER_EMAIL"
		value: "$(params.userEmail)"
	}]
	workingDir: "/workspace/source"
	script: """
		#!/usr/bin/env sh
		set -e

		export USERNAME=`cat /workspace/basic-auth/GIT_USER_NAME`
		git config --global user.email \"${USER_EMAIL}\"
		git config --global user.name \"${USERNAME}\"  

		git add .
		git commit --allow-empty -m \"updating imagetag to $(inputs.params.ImageTag)\"

		git push origin main

		"""
}, {
	name:  "wait-for-argocd-rollout"
	image: "ghcr.io/kube-tarian/helmrepo-supporting-tools/argocd:v2.6.15"
	script: """
		#!/usr/bin/env sh
		set -e

		export ARGOCD_SERVER=`cat /workspace/argo-auth/SERVER_URL`
		export ARGOCD_APP_NAME=`cat /workspace/basic-auth/CLUSTER_NAME`
		export USERNAME=`cat /workspace/argo-auth/USERNAME`
		export PASSWORD=`cat /workspace/argo-auth/PASSWORD`

		echo \"y\" | argocd login ${ARGOCD_SERVER} --username $USERNAME --password $PASSWORD --insecure --grpc-web
		argocd app sync ${ARGOCD_APP_NAME}-$(inputs.params.NAME) --insecure --server ${ARGOCD_SERVER} --grpc-web
		argocd app wait ${ARGOCD_APP_NAME}-$(inputs.params.NAME) --sync --health --operation --insecure --server ${ARGOCD_SERVER} --grpc-web

		"""
}, {
	name:  "check-argocd-status"
	image: "ghcr.io/kube-tarian/helmrepo-supporting-tools/argocd:v2.6.15"
	script: """
		#!/usr/bin/env sh
		set -e

		export ARGOCD_SERVER=`cat /workspace/argo-auth/SERVER_URL`
		export ARGOCD_APP_NAME=`cat /workspace/basic-auth/CLUSTER_NAME`
		export USERNAME=`cat /workspace/argo-auth/USERNAME`
		export PASSWORD=`cat /workspace/argo-auth/PASSWORD`

		echo \"y\" | argocd login ${ARGOCD_SERVER} --username $USERNAME --password $PASSWORD --insecure --grpc-web
		sync_status=$(argocd app get ${ARGOCD_APP_NAME}-$(inputs.params.NAME) --insecure --server ${ARGOCD_SERVER} --grpc-web | awk '/Sync Status:/ {print $3}')
		echo \"Sync Status: $sync_status\"
		if [ \"$sync_status\" = \"Synced\" ]; then
		  echo \"Application is successfully synced.\"
		else
		  echo \"Application synchronization failed.\"
		fi
		"""
}]}
