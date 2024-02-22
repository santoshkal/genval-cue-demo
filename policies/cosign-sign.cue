package tekton

#Params: {
	name:        "image"
	description: "The image to be signed by cosign."
	type:        "string"
}
#Steps: {
	name:  "cosign-sign"
	image: "ghcr.io/kube-tarian/helmrepo-supporting-tools/cosign:v2.2.2"
	script: """
		#!/usr/bin/env bash
		mkdir -p ~/.docker/
		export registry=`cat /workspace/dockerconfig/registry`
		export username=`cat /workspace/dockerconfig/username`
		export password=`cat /workspace/dockerconfig/password`
		cosign login $registry -u $username -p $password
		export COSIGN_PASSWORD=\"\"
		cosign sign -y --key /workspace/cosign/cosign.key $(params.image) cosign-sign cosign-sign



		"""

	securityContext: privileged: false
}

#WorkspaceDeclerations:
{[
	{
		name: "source"
	}, {
		name:        "dockerconfig"
		description: "An optional workspace that allows providing a .docker/config.json file for Buildah to access the container registry. The file should be placed at the root of the Workspace with name config.json."
		optional:    true
	}, {
		name:        "cosign"
		description: "Cosign private key to sign image"
	},

]}

#Metadata: {
	name: string | *#Name
}

#Name: "Cosign_Sign"

#Description: "Cosign sign an image"
