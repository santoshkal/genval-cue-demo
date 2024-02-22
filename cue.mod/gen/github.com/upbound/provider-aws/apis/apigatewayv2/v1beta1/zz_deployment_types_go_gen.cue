// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigatewayv2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#DeploymentInitParameters: {
	// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
	description?: null | string @go(Description,*string)
}

#DeploymentObservation: {
	// API identifier.
	apiId?: null | string @go(APIID,*string)

	// Whether the deployment was automatically released.
	autoDeployed?: null | bool @go(AutoDeployed,*bool)

	// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
	description?: null | string @go(Description,*string)

	// Deployment identifier.
	id?: null | string @go(ID,*string)
}

#DeploymentParameters: {
	// API identifier.
	// +crossplane:generate:reference:type=API
	// +kubebuilder:validation:Optional
	apiId?: null | string @go(APIID,*string)

	// Reference to a API to populate apiId.
	// +kubebuilder:validation:Optional
	apiIdRef?: null | v1.#Reference @go(APIIDRef,*v1.Reference)

	// Selector for a API to populate apiId.
	// +kubebuilder:validation:Optional
	apiIdSelector?: null | v1.#Selector @go(APIIDSelector,*v1.Selector)

	// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// DeploymentSpec defines the desired state of Deployment
#DeploymentSpec: {
	v1.#ResourceSpec
	forProvider: #DeploymentParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #DeploymentInitParameters @go(InitProvider)
}

// DeploymentStatus defines the observed state of Deployment.
#DeploymentStatus: {
	v1.#ResourceStatus
	atProvider?: #DeploymentObservation @go(AtProvider)
}

// Deployment is the Schema for the Deployments API. Manages an Amazon API Gateway Version 2 deployment.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Deployment: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #DeploymentSpec    @go(Spec)
	status?:   #DeploymentStatus  @go(Status)
}

// DeploymentList contains a list of Deployments
#DeploymentList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Deployment] @go(Items,[]Deployment)
}