package tekton

import ( "github.com/tektoncd/pipeline/pkg/apis/pipeline/v1beta1"

)


#ClusterTask: v1beta1.#ClusterTask & {
	metadata: #Metadata
	spec: v1beta1.#TaskSpec & {
		description: #Description
		params:      [#Params]
		steps: [#Steps]
		workspaces: #WorkspaceDeclerations
	}
}