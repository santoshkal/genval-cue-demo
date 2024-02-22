// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#ManagedPrefixListEntryInitParameters: {
	// Description of this entry. Due to API limitations, updating only the description of an entry requires recreating the entry.
	description?: null | string @go(Description,*string)
}

#ManagedPrefixListEntryObservation: {
	// CIDR block of this entry.
	cidr?: null | string @go(Cidr,*string)

	// Description of this entry. Due to API limitations, updating only the description of an entry requires recreating the entry.
	description?: null | string @go(Description,*string)

	// ID of the managed prefix list entry.
	id?: null | string @go(ID,*string)

	// CIDR block of this entry.
	prefixListId?: null | string @go(PrefixListID,*string)
}

#ManagedPrefixListEntryParameters: {
	// CIDR block of this entry.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("cidr_block",false)
	// +kubebuilder:validation:Optional
	cidr?: null | string @go(Cidr,*string)

	// Reference to a VPC in ec2 to populate cidr.
	// +kubebuilder:validation:Optional
	cidrRef?: null | v1.#Reference @go(CidrRef,*v1.Reference)

	// Selector for a VPC in ec2 to populate cidr.
	// +kubebuilder:validation:Optional
	cidrSelector?: null | v1.#Selector @go(CidrSelector,*v1.Selector)

	// Description of this entry. Due to API limitations, updating only the description of an entry requires recreating the entry.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// CIDR block of this entry.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.ManagedPrefixList
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	prefixListId?: null | string @go(PrefixListID,*string)

	// Reference to a ManagedPrefixList in ec2 to populate prefixListId.
	// +kubebuilder:validation:Optional
	prefixListIdRef?: null | v1.#Reference @go(PrefixListIDRef,*v1.Reference)

	// Selector for a ManagedPrefixList in ec2 to populate prefixListId.
	// +kubebuilder:validation:Optional
	prefixListIdSelector?: null | v1.#Selector @go(PrefixListIDSelector,*v1.Selector)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// ManagedPrefixListEntrySpec defines the desired state of ManagedPrefixListEntry
#ManagedPrefixListEntrySpec: {
	v1.#ResourceSpec
	forProvider: #ManagedPrefixListEntryParameters @go(ForProvider)

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
	initProvider?: #ManagedPrefixListEntryInitParameters @go(InitProvider)
}

// ManagedPrefixListEntryStatus defines the observed state of ManagedPrefixListEntry.
#ManagedPrefixListEntryStatus: {
	v1.#ResourceStatus
	atProvider?: #ManagedPrefixListEntryObservation @go(AtProvider)
}

// ManagedPrefixListEntry is the Schema for the ManagedPrefixListEntrys API. Provides a managed prefix list entry resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ManagedPrefixListEntry: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta            @go(ObjectMeta)
	spec:      #ManagedPrefixListEntrySpec   @go(Spec)
	status?:   #ManagedPrefixListEntryStatus @go(Status)
}

// ManagedPrefixListEntryList contains a list of ManagedPrefixListEntrys
#ManagedPrefixListEntryList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ManagedPrefixListEntry] @go(Items,[]ManagedPrefixListEntry)
}
