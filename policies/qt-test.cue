package tekton

#Params: {[{
	name:        "QT_SERVER"
	description: "server URL of quality-trace"
}]}

#Description: "The git repo will be cloned onto the volume backing this Workspace."

#Name: "install-and-run-qt"

#Steps: {[{
	name:  "install-and-run-qt"
	image: "ghcr.io/intelops/quality-trace/cli:latest"
	script: """

		# Configure and Run Quality-trace CLI
		quality-trace configure --endpoint $(params.QT_SERVER)
		quality-trace run test --file /workspace/output/qt_test/test.yaml -o json

		"""
}]}

#Metadata: name: string | *#Name

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
}]}
