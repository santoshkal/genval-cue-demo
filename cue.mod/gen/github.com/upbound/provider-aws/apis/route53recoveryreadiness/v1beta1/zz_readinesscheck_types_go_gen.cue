// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/route53recoveryreadiness/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#ReadinessCheckInitParameters: {
	// Name describing the resource set that will be monitored for readiness.
	resourceSetName?: null | string @go(ResourceSetName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ReadinessCheckObservation: {
	// ARN of the readiness_check
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// Name describing the resource set that will be monitored for readiness.
	resourceSetName?: null | string @go(ResourceSetName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ReadinessCheckParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Name describing the resource set that will be monitored for readiness.
	// +kubebuilder:validation:Optional
	resourceSetName?: null | string @go(ResourceSetName,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ReadinessCheckSpec defines the desired state of ReadinessCheck
#ReadinessCheckSpec: {
	v1.#ResourceSpec
	forProvider: #ReadinessCheckParameters @go(ForProvider)

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
	initProvider?: #ReadinessCheckInitParameters @go(InitProvider)
}

// ReadinessCheckStatus defines the observed state of ReadinessCheck.
#ReadinessCheckStatus: {
	v1.#ResourceStatus
	atProvider?: #ReadinessCheckObservation @go(AtProvider)
}

// ReadinessCheck is the Schema for the ReadinessChecks API. Provides an AWS Route 53 Recovery Readiness Readiness Check
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ReadinessCheck: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.resourceSetName) || (has(self.initProvider) && has(self.initProvider.resourceSetName))",message="spec.forProvider.resourceSetName is a required parameter"
	spec:    #ReadinessCheckSpec   @go(Spec)
	status?: #ReadinessCheckStatus @go(Status)
}

// ReadinessCheckList contains a list of ReadinessChecks
#ReadinessCheckList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ReadinessCheck] @go(Items,[]ReadinessCheck)
}
