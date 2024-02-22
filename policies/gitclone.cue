package tekton

#Params: {[{
	name:        "url"
	description: "Repository URL to clone from."
	type:        "string"
}, {
	name:        "revision"
	description: "Revision to checkout. (branch, tag, sha, ref, etc...)"
	type:        "string"
	default:     ""
}, {
	name:        "refspec"
	description: "Refspec to fetch before checking out revision."
	default:     ""
}, {
	name:        "submodules"
	description: "Initialize and fetch git submodules."
	type:        "string"
	default:     "true"
}, {
	name:        "depth"
	description: "Perform a shallow clone, fetching only the most recent N commits."
	type:        "string"
	default:     "0"
}, {
	name:        "sslVerify"
	description: "Set the `http.sslVerify` global git config. Setting this to `false` is not advised unless you are sure that you trust your git remote."
	type:        "string"
	default:     "true"
}, {
	name:        "crtFileName"
	description: "file name of mounted crt using ssl-ca-directory workspace. default value is ca-bundle.crt."
	type:        "string"
	default:     "ca-bundle.crt"
}, {
	name:        "subdirectory"
	description: "Subdirectory inside the `output` Workspace to clone the repo into."
	type:        "string"
	default:     ""
}, {
	name:        "sparseCheckoutDirectories"
	description: "Define the directory patterns to match or exclude when performing a sparse checkout."
	type:        "string"
	default:     ""
}, {
	name:        "deleteExisting"
	description: "Clean out the contents of the destination directory if it already exists before cloning."
	type:        "string"
	default:     "true"
}, {
	name:        "httpProxy"
	description: "HTTP proxy server for non-SSL requests."
	type:        "string"
	default:     ""
}, {
	name:        "httpsProxy"
	description: "HTTPS proxy server for SSL requests."
	type:        "string"
	default:     ""
}, {
	name:        "noProxy"
	description: "Opt out of proxying HTTP/HTTPS requests."
	type:        "string"
	default:     ""
}, {
	name:        "verbose"
	description: "Log the commands that are executed during `git-clone`'s operation."
	type:        "string"
	default:     "true"
}, {
	name:        "gitInitImage"
	description: "The image providing the git-init binary that this Task runs."
	type:        "string"
	default:     "gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/git-init:v0.40.2"
}, {
	//default: "gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/git-init:v0.33.2"
	name: "userHome"
	description: """
		Absolute path to the user's home directory.

		"""

	type:    "string"
	default: "/home/git"
}, {
	name:        "PARAM_SCM"
	description: "Define the Source code Management URL"
	type:        "string"
	default:     "github.com"
}]}

#Description: """
	These Tasks are Git tasks to work with repositories used by other tasks in your Pipeline.
	The git-clone Task will clone a repo from the provided url into the output Workspace. By default the repo will be cloned into the root of your Workspace. You can clone into a subdirectory by setting this Task's subdirectory param. This Task also supports sparse checkouts. To perform a sparse checkout, pass a list of comma separated directory patterns to this Task's sparseCheckoutDirectories param.
	"""

#Name: "git-clone"

#Steps: {[{
	name:  "clone"
	image: "$(params.gitInitImage)"
	env: [{
		name:  "HOME"
		value: "$(params.userHome)"
	}, {
		name:  "PARAM_URL"
		value: "$(params.url)"
	}, {
		name:  "PARAM_REVISION"
		value: "$(params.revision)"
	}, {
		name:  "PARAM_REFSPEC"
		value: "$(params.refspec)"
	}, {
		name:  "PARAM_SUBMODULES"
		value: "$(params.submodules)"
	}, {
		name:  "PARAM_DEPTH"
		value: "$(params.depth)"
	}, {
		name:  "PARAM_SSL_VERIFY"
		value: "$(params.sslVerify)"
	}, {
		name:  "PARAM_CRT_FILENAME"
		value: "$(params.crtFileName)"
	}, {
		name:  "PARAM_SUBDIRECTORY"
		value: "$(params.subdirectory)"
	}, {
		name:  "PARAM_DELETE_EXISTING"
		value: "$(params.deleteExisting)"
	}, {
		name:  "PARAM_HTTP_PROXY"
		value: "$(params.httpProxy)"
	}, {
		name:  "PARAM_HTTPS_PROXY"
		value: "$(params.httpsProxy)"
	}, {
		name:  "PARAM_NO_PROXY"
		value: "$(params.noProxy)"
	}, {
		name:  "PARAM_VERBOSE"
		value: "$(params.verbose)"
	}, {
		name:  "PARAM_SPARSE_CHECKOUT_DIRECTORIES"
		value: "$(params.sparseCheckoutDirectories)"
	}, {
		name:  "PARAM_USER_HOME"
		value: "$(params.userHome)"
	}, {
		name:  "WORKSPACE_OUTPUT_PATH"
		value: "$(workspaces.output.path)"
	}, {
		name:  "WORKSPACE_SSH_DIRECTORY_BOUND"
		value: "$(workspaces.ssh-directory.bound)"
	}, {
		name:  "WORKSPACE_SSH_DIRECTORY_PATH"
		value: "$(workspaces.ssh-directory.path)"
	}, {
		name:  "WORKSPACE_BASIC_AUTH_DIRECTORY_BOUND"
		value: "$(workspaces.basic-auth.bound)"
	}, {
		name:  "WORKSPACE_BASIC_AUTH_DIRECTORY_PATH"
		value: "$(workspaces.basic-auth.path)"
	}, {
		name:  "WORKSPACE_SSL_CA_DIRECTORY_BOUND"
		value: "$(workspaces.ssl-ca-directory.bound)"
	}, {
		name:  "WORKSPACE_SSL_CA_DIRECTORY_PATH"
		value: "$(workspaces.ssl-ca-directory.path)"
	}, {
		name:  "PARAM_SCM"
		value: "$(params.PARAM_SCM)"
	}]
	securityContext: {
		runAsNonRoot: true
		runAsUser:    65532
	}
	script: """
		#!/usr/bin/env sh
		set -eu

		if [ \"${PARAM_VERBOSE}\" = \"true\" ]; then
		  set -x
		fi

		if [ \"${WORKSPACE_BASIC_AUTH_DIRECTORY_BOUND}\" = \"true\" ]; then
		  echo \"${PARAM_USER_HOME}\"
		  touch \"${PARAM_USER_HOME}/.git-credentials\"
		  touch \"${PARAM_USER_HOME}/.gitconfig\"
		  chmod 755 \"${PARAM_USER_HOME}/.git-credentials\"
		  chmod 755 \"${PARAM_USER_HOME}/.gitconfig\"
		  git config --global credential.helper cache
		  git config --global credential.helper \"cache --timeout=3600\"
		  export USERNAME=`cat /workspace/basic-auth/username`
		  export TOKEN=`cat /workspace/basic-auth/password`
		  git config --global user.name \"${USERNAME}\"
		  git config --global credential.helper \"store --file ${PARAM_USER_HOME}/.git-credentials\"
		  echo https://${USERNAME}:${TOKEN}@${PARAM_SCM} > \"${PARAM_USER_HOME}/.git-credentials\"
		  chmod 400 \"${PARAM_USER_HOME}/.git-credentials\"
		  chmod 400 \"${PARAM_USER_HOME}/.gitconfig\"
		fi

		if [ \"${WORKSPACE_SSH_DIRECTORY_BOUND}\" = \"true\" ]; then
		  cp -R \"${WORKSPACE_SSH_DIRECTORY_PATH}\" \"${PARAM_USER_HOME}/.ssh\"
		  chmod 700 \"${PARAM_USER_HOME}/.ssh\"
		  chmod -R 400 \"${PARAM_USER_HOME}/.ssh/*\"
		fi

		if [ \"${WORKSPACE_SSL_CA_DIRECTORY_BOUND}\" = \"true\" ]; then
		  export GIT_SSL_CAPATH=\"${WORKSPACE_SSL_CA_DIRECTORY_PATH}\"
		  if [ \"${PARAM_CRT_FILENAME}\" != \"\" ]; then
		    export GIT_SSL_CAINFO=\"${WORKSPACE_SSL_CA_DIRECTORY_PATH}/${PARAM_CRT_FILENAME}\"
		  fi
		fi

		CHECKOUT_DIR=\"${WORKSPACE_OUTPUT_PATH}/${PARAM_SUBDIRECTORY}\"

		cleandir() {
		  # Delete any existing contents of the repo directory if it exists.
		  #
		  # We don't just \"rm -rf ${CHECKOUT_DIR}\" because ${CHECKOUT_DIR} might be \"/\"
		  # or the root of a mounted volume.
		  if [ -d \"${CHECKOUT_DIR}\" ]; then
		    # Delete non-hidden files and directories
		    rm -rf \"${CHECKOUT_DIR:?}\"/*
		    # Delete files and directories starting with . but excluding ..
		    rm -rf \"${CHECKOUT_DIR}\"/.[!.]*
		    # Delete files and directories starting with .. plus any other character
		    rm -rf \"${CHECKOUT_DIR}\"/..?*
		  fi
		}

		if [ \"${PARAM_DELETE_EXISTING}\" = \"true\" ]; then
		  cleandir || true
		fi

		test -z \"${PARAM_HTTP_PROXY}\" || export HTTP_PROXY=\"${PARAM_HTTP_PROXY}\"
		test -z \"${PARAM_HTTPS_PROXY}\" || export HTTPS_PROXY=\"${PARAM_HTTPS_PROXY}\"
		test -z \"${PARAM_NO_PROXY}\" || export NO_PROXY=\"${PARAM_NO_PROXY}\"

		git config --global --add safe.directory \"${WORKSPACE_OUTPUT_PATH}\"

		/ko-app/git-init \\
		  -url=\"${PARAM_URL}\" \\
		  -revision=\"${PARAM_REVISION}\" \\
		  -refspec=\"${PARAM_REFSPEC}\" \\
		  -path=\"${CHECKOUT_DIR}\" \\
		  -sslVerify=\"${PARAM_SSL_VERIFY}\" \\
		  -submodules=\"${PARAM_SUBMODULES}\" \\
		  -depth=\"${PARAM_DEPTH}\" \\
		  -sparseCheckoutDirectories=\"${PARAM_SPARSE_CHECKOUT_DIRECTORIES}\"

		cd \"${CHECKOUT_DIR}\"
		RESULT_SHA=\"$(git rev-parse HEAD)\"
		EXIT_CODE=\"$?\"

		if [ \"${EXIT_CODE}\" != 0 ]; then
		  exit \"${EXIT_CODE}\"
		fi

		RESULT_COMMITTER_DATE=\"$(git log -1 --pretty=%ct)\"
		printf \"%s\" \"${RESULT_COMMITTER_DATE}\" >\"$(results.committer-date.path)\"
		printf \"%s\" \"${RESULT_SHA}\" >\"$(results.commit.path)\"
		printf \"%s\" \"${PARAM_URL}\" >\"$(results.url.path)\"
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
}, {
	name:     "ssl-ca-directory"
	optional: true
	description: """
		A workspace containing CA certificates, this will be used by Git to
		verify the peer with when fetching or pushing over HTTPS.

		"""
}]}