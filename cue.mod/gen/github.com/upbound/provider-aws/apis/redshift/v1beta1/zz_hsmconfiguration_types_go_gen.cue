// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/redshift/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#HSMConfigurationInitParameters: {
	// A text description of the HSM configuration to be created.
	description?: null | string @go(Description,*string)

	// The IP address that the Amazon Redshift cluster must use to access the HSM.
	hsmIpAddress?: null | string @go(HSMIPAddress,*string)

	// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
	hsmPartitionName?: null | string @go(HSMPartitionName,*string)

	// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
	hsmServerPublicCertificate?: null | string @go(HSMServerPublicCertificate,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#HSMConfigurationObservation: {
	// Amazon Resource Name (ARN) of the Hsm Client Certificate.
	arn?: null | string @go(Arn,*string)

	// A text description of the HSM configuration to be created.
	description?: null | string @go(Description,*string)

	// The IP address that the Amazon Redshift cluster must use to access the HSM.
	hsmIpAddress?: null | string @go(HSMIPAddress,*string)

	// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
	hsmPartitionName?: null | string @go(HSMPartitionName,*string)

	// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
	hsmServerPublicCertificate?: null | string @go(HSMServerPublicCertificate,*string)
	id?:                         null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#HSMConfigurationParameters: {
	// A text description of the HSM configuration to be created.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The IP address that the Amazon Redshift cluster must use to access the HSM.
	// +kubebuilder:validation:Optional
	hsmIpAddress?: null | string @go(HSMIPAddress,*string)

	// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
	// +kubebuilder:validation:Optional
	hsmPartitionName?: null | string @go(HSMPartitionName,*string)

	// The password required to access the HSM partition.
	// +kubebuilder:validation:Optional
	hsmPartitionPasswordSecretRef: v1.#SecretKeySelector @go(HSMPartitionPasswordSecretRef)

	// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
	// +kubebuilder:validation:Optional
	hsmServerPublicCertificate?: null | string @go(HSMServerPublicCertificate,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// HSMConfigurationSpec defines the desired state of HSMConfiguration
#HSMConfigurationSpec: {
	v1.#ResourceSpec
	forProvider: #HSMConfigurationParameters @go(ForProvider)

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
	initProvider?: #HSMConfigurationInitParameters @go(InitProvider)
}

// HSMConfigurationStatus defines the observed state of HSMConfiguration.
#HSMConfigurationStatus: {
	v1.#ResourceStatus
	atProvider?: #HSMConfigurationObservation @go(AtProvider)
}

// HSMConfiguration is the Schema for the HSMConfigurations API. Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM).
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#HSMConfiguration: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.description) || (has(self.initProvider) && has(self.initProvider.description))",message="spec.forProvider.description is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.hsmIpAddress) || (has(self.initProvider) && has(self.initProvider.hsmIpAddress))",message="spec.forProvider.hsmIpAddress is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.hsmPartitionName) || (has(self.initProvider) && has(self.initProvider.hsmPartitionName))",message="spec.forProvider.hsmPartitionName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.hsmPartitionPasswordSecretRef)",message="spec.forProvider.hsmPartitionPasswordSecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.hsmServerPublicCertificate) || (has(self.initProvider) && has(self.initProvider.hsmServerPublicCertificate))",message="spec.forProvider.hsmServerPublicCertificate is a required parameter"
	spec:    #HSMConfigurationSpec   @go(Spec)
	status?: #HSMConfigurationStatus @go(Status)
}

// HSMConfigurationList contains a list of HSMConfigurations
#HSMConfigurationList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#HSMConfiguration] @go(Items,[]HSMConfiguration)
}
