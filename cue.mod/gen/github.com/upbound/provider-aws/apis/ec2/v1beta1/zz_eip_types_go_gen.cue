// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#EIPInitParameters: {
	// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
	address?: null | string @go(Address,*string)

	// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
	associateWithPrivateIp?: null | string @go(AssociateWithPrivateIP,*string)

	// ID  of a customer-owned address pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide.
	customerOwnedIpv4Pool?: null | string @go(CustomerOwnedIPv4Pool,*string)

	// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
	networkBorderGroup?: null | string @go(NetworkBorderGroup,*string)

	// EC2 IPv4 address pool identifier or amazon.
	// This option is only available for VPC EIPs.
	publicIpv4Pool?: null | string @go(PublicIPv4Pool,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Boolean if the EIP is in a VPC or not.
	// Defaults to true unless the region supports EC2-Classic.
	vpc?: null | bool @go(VPC,*bool)
}

#EIPObservation: {
	// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
	address?: null | string @go(Address,*string)

	// ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
	allocationId?: null | string @go(AllocationID,*string)

	// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
	associateWithPrivateIp?: null | string @go(AssociateWithPrivateIP,*string)

	// ID representing the association of the address with an instance in a VPC.
	associationId?: null | string @go(AssociationID,*string)

	// Carrier IP address.
	carrierIp?: null | string @go(CarrierIP,*string)

	// Customer owned IP.
	customerOwnedIp?: null | string @go(CustomerOwnedIP,*string)

	// ID  of a customer-owned address pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide.
	customerOwnedIpv4Pool?: null | string @go(CustomerOwnedIPv4Pool,*string)

	// Indicates if this EIP is for use in VPC (vpc) or EC2-Classic (standard).
	domain?: null | string @go(Domain,*string)

	// Contains the EIP allocation ID.
	id?: null | string @go(ID,*string)

	// EC2 instance ID.
	instance?: null | string @go(Instance,*string)

	// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
	networkBorderGroup?: null | string @go(NetworkBorderGroup,*string)

	// Network interface ID to associate with.
	networkInterface?: null | string @go(NetworkInterface,*string)

	// The Private DNS associated with the Elastic IP address (if in VPC).
	privateDns?: null | string @go(PrivateDNS,*string)

	// Contains the private IP address (if in VPC).
	privateIp?: null | string @go(PrivateIP,*string)

	// Public DNS associated with the Elastic IP address.
	publicDns?: null | string @go(PublicDNS,*string)

	// Contains the public IP address.
	publicIp?: null | string @go(PublicIP,*string)

	// EC2 IPv4 address pool identifier or amazon.
	// This option is only available for VPC EIPs.
	publicIpv4Pool?: null | string @go(PublicIPv4Pool,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Boolean if the EIP is in a VPC or not.
	// Defaults to true unless the region supports EC2-Classic.
	vpc?: null | bool @go(VPC,*bool)
}

#EIPParameters: {
	// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
	// +kubebuilder:validation:Optional
	address?: null | string @go(Address,*string)

	// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
	// +kubebuilder:validation:Optional
	associateWithPrivateIp?: null | string @go(AssociateWithPrivateIP,*string)

	// ID  of a customer-owned address pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide.
	// +kubebuilder:validation:Optional
	customerOwnedIpv4Pool?: null | string @go(CustomerOwnedIPv4Pool,*string)

	// EC2 instance ID.
	// +crossplane:generate:reference:type=Instance
	// +kubebuilder:validation:Optional
	instance?: null | string @go(Instance,*string)

	// Reference to a Instance to populate instance.
	// +kubebuilder:validation:Optional
	instanceRef?: null | v1.#Reference @go(InstanceRef,*v1.Reference)

	// Selector for a Instance to populate instance.
	// +kubebuilder:validation:Optional
	instanceSelector?: null | v1.#Selector @go(InstanceSelector,*v1.Selector)

	// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
	// +kubebuilder:validation:Optional
	networkBorderGroup?: null | string @go(NetworkBorderGroup,*string)

	// Network interface ID to associate with.
	// +crossplane:generate:reference:type=NetworkInterface
	// +kubebuilder:validation:Optional
	networkInterface?: null | string @go(NetworkInterface,*string)

	// Reference to a NetworkInterface to populate networkInterface.
	// +kubebuilder:validation:Optional
	networkInterfaceRef?: null | v1.#Reference @go(NetworkInterfaceRef,*v1.Reference)

	// Selector for a NetworkInterface to populate networkInterface.
	// +kubebuilder:validation:Optional
	networkInterfaceSelector?: null | v1.#Selector @go(NetworkInterfaceSelector,*v1.Selector)

	// EC2 IPv4 address pool identifier or amazon.
	// This option is only available for VPC EIPs.
	// +kubebuilder:validation:Optional
	publicIpv4Pool?: null | string @go(PublicIPv4Pool,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Boolean if the EIP is in a VPC or not.
	// Defaults to true unless the region supports EC2-Classic.
	// +kubebuilder:validation:Optional
	vpc?: null | bool @go(VPC,*bool)
}

// EIPSpec defines the desired state of EIP
#EIPSpec: {
	v1.#ResourceSpec
	forProvider: #EIPParameters @go(ForProvider)

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
	initProvider?: #EIPInitParameters @go(InitProvider)
}

// EIPStatus defines the observed state of EIP.
#EIPStatus: {
	v1.#ResourceStatus
	atProvider?: #EIPObservation @go(AtProvider)
}

// EIP is the Schema for the EIPs API. Provides an Elastic IP resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#EIP: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #EIPSpec           @go(Spec)
	status?:   #EIPStatus         @go(Status)
}

// EIPList contains a list of EIPs
#EIPList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#EIP] @go(Items,[]EIP)
}