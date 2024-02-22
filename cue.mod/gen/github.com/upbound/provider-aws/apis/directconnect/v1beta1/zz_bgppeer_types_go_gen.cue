// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/directconnect/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#BGPPeerInitParameters: {
	// The address family for the BGP peer. ipv4  or ipv6.
	addressFamily?: null | string @go(AddressFamily,*string)

	// The IPv4 CIDR address to use to send traffic to Amazon.
	// Required for IPv4 BGP peers on public virtual interfaces.
	amazonAddress?: null | string @go(AmazonAddress,*string)

	// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
	bgpAsn?: null | float64 @go(BGPAsn,*float64)

	// The authentication key for BGP configuration.
	bgpAuthKey?: null | string @go(BGPAuthKey,*string)

	// The IPv4 CIDR destination address to which Amazon should send traffic.
	// Required for IPv4 BGP peers on public virtual interfaces.
	customerAddress?: null | string @go(CustomerAddress,*string)
}

#BGPPeerObservation: {
	// The address family for the BGP peer. ipv4  or ipv6.
	addressFamily?: null | string @go(AddressFamily,*string)

	// The IPv4 CIDR address to use to send traffic to Amazon.
	// Required for IPv4 BGP peers on public virtual interfaces.
	amazonAddress?: null | string @go(AmazonAddress,*string)

	// The Direct Connect endpoint on which the BGP peer terminates.
	awsDevice?: null | string @go(AwsDevice,*string)

	// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
	bgpAsn?: null | float64 @go(BGPAsn,*float64)

	// The authentication key for BGP configuration.
	bgpAuthKey?: null | string @go(BGPAuthKey,*string)

	// The ID of the BGP peer.
	bgpPeerId?: null | string @go(BGPPeerID,*string)

	// The Up/Down state of the BGP peer.
	bgpStatus?: null | string @go(BGPStatus,*string)

	// The IPv4 CIDR destination address to which Amazon should send traffic.
	// Required for IPv4 BGP peers on public virtual interfaces.
	customerAddress?: null | string @go(CustomerAddress,*string)

	// The ID of the BGP peer resource.
	id?: null | string @go(ID,*string)

	// The ID of the Direct Connect virtual interface on which to create the BGP peer.
	virtualInterfaceId?: null | string @go(VirtualInterfaceID,*string)
}

#BGPPeerParameters: {
	// The address family for the BGP peer. ipv4  or ipv6.
	// +kubebuilder:validation:Optional
	addressFamily?: null | string @go(AddressFamily,*string)

	// The IPv4 CIDR address to use to send traffic to Amazon.
	// Required for IPv4 BGP peers on public virtual interfaces.
	// +kubebuilder:validation:Optional
	amazonAddress?: null | string @go(AmazonAddress,*string)

	// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
	// +kubebuilder:validation:Optional
	bgpAsn?: null | float64 @go(BGPAsn,*float64)

	// The authentication key for BGP configuration.
	// +kubebuilder:validation:Optional
	bgpAuthKey?: null | string @go(BGPAuthKey,*string)

	// The IPv4 CIDR destination address to which Amazon should send traffic.
	// Required for IPv4 BGP peers on public virtual interfaces.
	// +kubebuilder:validation:Optional
	customerAddress?: null | string @go(CustomerAddress,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ID of the Direct Connect virtual interface on which to create the BGP peer.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/directconnect/v1beta1.PrivateVirtualInterface
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualInterfaceId?: null | string @go(VirtualInterfaceID,*string)

	// Reference to a PrivateVirtualInterface in directconnect to populate virtualInterfaceId.
	// +kubebuilder:validation:Optional
	virtualInterfaceIdRef?: null | v1.#Reference @go(VirtualInterfaceIDRef,*v1.Reference)

	// Selector for a PrivateVirtualInterface in directconnect to populate virtualInterfaceId.
	// +kubebuilder:validation:Optional
	virtualInterfaceIdSelector?: null | v1.#Selector @go(VirtualInterfaceIDSelector,*v1.Selector)
}

// BGPPeerSpec defines the desired state of BGPPeer
#BGPPeerSpec: {
	v1.#ResourceSpec
	forProvider: #BGPPeerParameters @go(ForProvider)

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
	initProvider?: #BGPPeerInitParameters @go(InitProvider)
}

// BGPPeerStatus defines the observed state of BGPPeer.
#BGPPeerStatus: {
	v1.#ResourceStatus
	atProvider?: #BGPPeerObservation @go(AtProvider)
}

// BGPPeer is the Schema for the BGPPeers API. Provides a Direct Connect BGP peer resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BGPPeer: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.addressFamily) || (has(self.initProvider) && has(self.initProvider.addressFamily))",message="spec.forProvider.addressFamily is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.bgpAsn) || (has(self.initProvider) && has(self.initProvider.bgpAsn))",message="spec.forProvider.bgpAsn is a required parameter"
	spec:    #BGPPeerSpec   @go(Spec)
	status?: #BGPPeerStatus @go(Status)
}

// BGPPeerList contains a list of BGPPeers
#BGPPeerList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#BGPPeer] @go(Items,[]BGPPeer)
}
