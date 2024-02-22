package tekton

import ( "github.com/tektoncd/pipeline/pkg/apis/pipeline/v1beta1"

)

#Pipeline: v1beta1.#Pipeline & {
	metadata: #Metadata
	spec: v1beta1.#PipelineSpec & {
		description: #Description
		params:      #Params
		workspaces:   #WorkspaceDeclerations
		tasks:       #Tasks
		finally:     #Finally
		...
	}
  }

