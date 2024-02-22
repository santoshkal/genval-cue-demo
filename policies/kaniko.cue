package tekton

#Params: {[{
	name:        "IMAGE"
	description: "Name (reference) of the image to build."
}, {
	name:        "DOCKERFILE"
	description: "Path to the Dockerfile to build."
	default:     "./Dockerfile"
}, {
	name:        "CONTEXT"
	description: "The build context used by Kaniko."
	default:     "./source"
}, {
	name: "EXTRA_ARGS"
	type: "array"
	default: []
}, {
	name:        "BUILDER_IMAGE"
	description: "The image on which builds will run (default is v1.5.1)"
	default:     "gcr.io/kaniko-project/executor:v1.5.1@sha256:c6166717f7fe0b7da44908c986137ecfeab21f31ec3992f6e128fff8a94be8a5"
}]}

#Description: "This Task builds a simple Dockerfile with kaniko and pushes to a registry. This Task stores the image name and digest as results, allowing Tekton Chains to pick up that an image was built & sign it."

#Name: "kaniko"

#Steps: {[{
	name:       "build-and-push"
	workingDir: "$(workspaces.source.path)"
	image:      "$(params.BUILDER_IMAGE)"
	args: [
		"$(params.EXTRA_ARGS)",
		"--dockerfile=$(params.DOCKERFILE)",
		"--context=$(workspaces.source.path)/$(params.CONTEXT)",
		"--destination=$(params.IMAGE)",
		"--digest-file=$(results.IMAGE_DIGEST.path)",
	]
	// The user does not need to care the workspace and the source.
	// kaniko assumes it is running as root, which means this example fails on platforms
	// that default to run containers as random uid (like OpenShift). Adding this securityContext
	// makes it explicit that it needs to run as root.
	securityContext: {
		runAsUser: 0
	}
}, {
	name:       "write-url"
	workingDir: "$(workspaces.source.path)"
	image:      "ghcr.io/kube-tarian/helmrepo-supporting-tools/bash:5.1.4"
	script: """
		set -e
		image=\"$(params.IMAGE)\""This Task builds a simple Dockerfile with kaniko and pushes to a registry. This Task stores the image name and digest as results, allowing Tekton Chains to pick up that an image was built & sign it."
		echo -n \"${image}\" | tee \"$(results.IMAGE_URL.path)\"

		"""
}]}

#Metadata: {
	name: string | *#Name
	labels: "app.kubernetes.io/version": "0.6"
	annotations: {
		"tekton.dev/pipelines.minVersion": "0.17.0"
		"tekton.dev/categories":           "Image Build"
		"tekton.dev/tags":                 "image-build"
		"tekton.dev/displayName":          "Build and upload container image using Kaniko"
		"tekton.dev/platforms":            "linux/amd64,linux/arm64,linux/ppc64le"
	}

}

#WorkspaceDeclerations: {[{
	name:        "source"
	description: "Holds the context and Dockerfile"
}, {
	name:        "dockerconfig"
	description: "Includes a docker `config.json`"
	optional:    true
	mountPath:   "/kaniko/.docker"
}]}
