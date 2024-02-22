package tekton

#Params: {
	name:        "image"
	type:        "string"
	description: "The image to be signed by cosign."
}

#Description: "Cosign Verifies an image signature"

#Name: "Cosign_Verify"

#Steps: {
	image: "ghcr.io/kube-tarian/helmrepo-supporting-tools/cosign:v2.2.2"
	name:  "cosign-sign"
	resources: {}
	script: "#!/usr/bin/env bash\nmkdir -p ~/.docker/\nexport registry=`cat /workspace/dockerconfig/registry`\nexport username=`cat /workspace/dockerconfig/username`\nexport password=`cat /workspace/dockerconfig/password`\ncosign login $registry -u $username -p $password\nexport COSIGN_PASSWORD=\"\"\ncosign verify --key /workspace/cosign/cosign.pub $(params.image)\n"
	securityContext: {
		privileged: false
	}
}

#Metadata: {
	name: string | *#Name
}

#WorkspaceDeclerations: {
	[
		{
			name: "source"
		}, {
			description: "An optional workspace that allows providing a .docker/config.json file for Buildah to access the container registry. The file should be placed at the root of the Workspace with name config.json."
			name:        "dockerconfig"
			optional:    true
		}, {
			description: "Cosign private key to sign image"
			name:        "cosign"
		},
	]
}
