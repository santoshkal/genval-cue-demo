// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#AttachmentInitParameters: {
}

#AttachmentObservation: {
	// ID of the network interface.
	attachmentId?: null | string @go(AttachmentID,*string)

	// Integer to define the devices index.
	deviceIndex?: null | float64 @go(DeviceIndex,*float64)

	// ID of the instance to attach to.
	instance?: null | string @go(Instance,*string)
}

#AttachmentParameters: {
}

#NetworkInterfaceInitParameters_2: {
	// Description for the network interface.
	description?: null | string @go(Description,*string)

	// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
	ipv4PrefixCount?: null | float64 @go(IPv4PrefixCount,*float64)

	// One or more IPv4 prefixes assigned to the network interface.
	ipv4Prefixes?: [...null | string] @go(IPv4Prefixes,[]*string)

	// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific ipv6_addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true, you can specify 0 to override this setting.
	ipv6AddressCount?: null | float64 @go(IPv6AddressCount,*float64)

	// List of private IPs to assign to the ENI in sequential order.
	ipv6AddressList?: [...null | string] @go(IPv6AddressList,[]*string)

	// Whether ipv6_address_list is allowed and controls the IPs to assign to the ENI and ipv6_addresses and ipv6_address_count become read-only. Default false.
	ipv6AddressListEnabled?: null | bool @go(IPv6AddressListEnabled,*bool)

	// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying ipv6_address_count.
	ipv6Addresses?: [...null | string] @go(IPv6Addresses,[]*string)

	// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
	ipv6PrefixCount?: null | float64 @go(IPv6PrefixCount,*float64)

	// One or more IPv6 prefixes assigned to the network interface.
	ipv6Prefixes?: [...null | string] @go(IPv6Prefixes,[]*string)

	// Type of network interface to create. Set to efa for Elastic Fabric Adapter. Changing interface_type will cause the resource to be destroyed and re-created.
	interfaceType?: null | string @go(InterfaceType,*string)
	privateIp?:     null | string @go(PrivateIP,*string)

	// List of private IPs to assign to the ENI in sequential order. Requires setting private_ip_list_enabled to true.
	privateIpList?: [...null | string] @go(PrivateIPList,[]*string)

	// Whether private_ip_list is allowed and controls the IPs to assign to the ENI and private_ips and private_ips_count become read-only. Default false.
	privateIpListEnabled?: null | bool @go(PrivateIPListEnabled,*bool)

	// List of private IPs to assign to the ENI without regard to order.
	privateIps?: [...null | string] @go(PrivateIps,[]*string)

	// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + private_ips_count, as a primary private IP will be assiged to an ENI by default.
	privateIpsCount?: null | float64 @go(PrivateIpsCount,*float64)

	// Whether to enable source destination checking for the ENI. Default true.
	sourceDestCheck?: null | bool @go(SourceDestCheck,*bool)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#NetworkInterfaceObservation_2: {
	// ARN of the network interface.
	arn?: null | string @go(Arn,*string)

	// Configuration block to define the attachment of the ENI. See Attachment below for more details!
	attachment?: [...#AttachmentObservation] @go(Attachment,[]AttachmentObservation)

	// Description for the network interface.
	description?: null | string @go(Description,*string)

	// ID of the network interface.
	id?: null | string @go(ID,*string)

	// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
	ipv4PrefixCount?: null | float64 @go(IPv4PrefixCount,*float64)

	// One or more IPv4 prefixes assigned to the network interface.
	ipv4Prefixes?: [...null | string] @go(IPv4Prefixes,[]*string)

	// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific ipv6_addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true, you can specify 0 to override this setting.
	ipv6AddressCount?: null | float64 @go(IPv6AddressCount,*float64)

	// List of private IPs to assign to the ENI in sequential order.
	ipv6AddressList?: [...null | string] @go(IPv6AddressList,[]*string)

	// Whether ipv6_address_list is allowed and controls the IPs to assign to the ENI and ipv6_addresses and ipv6_address_count become read-only. Default false.
	ipv6AddressListEnabled?: null | bool @go(IPv6AddressListEnabled,*bool)

	// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying ipv6_address_count.
	ipv6Addresses?: [...null | string] @go(IPv6Addresses,[]*string)

	// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
	ipv6PrefixCount?: null | float64 @go(IPv6PrefixCount,*float64)

	// One or more IPv6 prefixes assigned to the network interface.
	ipv6Prefixes?: [...null | string] @go(IPv6Prefixes,[]*string)

	// Type of network interface to create. Set to efa for Elastic Fabric Adapter. Changing interface_type will cause the resource to be destroyed and re-created.
	interfaceType?: null | string @go(InterfaceType,*string)

	// MAC address of the network interface.
	macAddress?: null | string @go(MacAddress,*string)

	// ARN of the network interface.
	outpostArn?: null | string @go(OutpostArn,*string)

	// AWS account ID of the owner of the network interface.
	ownerId?: null | string @go(OwnerID,*string)

	// Private DNS name of the network interface (IPv4).
	privateDnsName?: null | string @go(PrivateDNSName,*string)
	privateIp?:      null | string @go(PrivateIP,*string)

	// List of private IPs to assign to the ENI in sequential order. Requires setting private_ip_list_enabled to true.
	privateIpList?: [...null | string] @go(PrivateIPList,[]*string)

	// Whether private_ip_list is allowed and controls the IPs to assign to the ENI and private_ips and private_ips_count become read-only. Default false.
	privateIpListEnabled?: null | bool @go(PrivateIPListEnabled,*bool)

	// List of private IPs to assign to the ENI without regard to order.
	privateIps?: [...null | string] @go(PrivateIps,[]*string)

	// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + private_ips_count, as a primary private IP will be assiged to an ENI by default.
	privateIpsCount?: null | float64 @go(PrivateIpsCount,*float64)

	// List of security group IDs to assign to the ENI.
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// Whether to enable source destination checking for the ENI. Default true.
	sourceDestCheck?: null | bool @go(SourceDestCheck,*bool)

	// Subnet ID to create the ENI in.
	subnetId?: null | string @go(SubnetID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#NetworkInterfaceParameters_2: {
	// Description for the network interface.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
	// +kubebuilder:validation:Optional
	ipv4PrefixCount?: null | float64 @go(IPv4PrefixCount,*float64)

	// One or more IPv4 prefixes assigned to the network interface.
	// +kubebuilder:validation:Optional
	ipv4Prefixes?: [...null | string] @go(IPv4Prefixes,[]*string)

	// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific ipv6_addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true, you can specify 0 to override this setting.
	// +kubebuilder:validation:Optional
	ipv6AddressCount?: null | float64 @go(IPv6AddressCount,*float64)

	// List of private IPs to assign to the ENI in sequential order.
	// +kubebuilder:validation:Optional
	ipv6AddressList?: [...null | string] @go(IPv6AddressList,[]*string)

	// Whether ipv6_address_list is allowed and controls the IPs to assign to the ENI and ipv6_addresses and ipv6_address_count become read-only. Default false.
	// +kubebuilder:validation:Optional
	ipv6AddressListEnabled?: null | bool @go(IPv6AddressListEnabled,*bool)

	// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying ipv6_address_count.
	// +kubebuilder:validation:Optional
	ipv6Addresses?: [...null | string] @go(IPv6Addresses,[]*string)

	// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
	// +kubebuilder:validation:Optional
	ipv6PrefixCount?: null | float64 @go(IPv6PrefixCount,*float64)

	// One or more IPv6 prefixes assigned to the network interface.
	// +kubebuilder:validation:Optional
	ipv6Prefixes?: [...null | string] @go(IPv6Prefixes,[]*string)

	// Type of network interface to create. Set to efa for Elastic Fabric Adapter. Changing interface_type will cause the resource to be destroyed and re-created.
	// +kubebuilder:validation:Optional
	interfaceType?: null | string @go(InterfaceType,*string)

	// +kubebuilder:validation:Optional
	privateIp?: null | string @go(PrivateIP,*string)

	// List of private IPs to assign to the ENI in sequential order. Requires setting private_ip_list_enabled to true.
	// +kubebuilder:validation:Optional
	privateIpList?: [...null | string] @go(PrivateIPList,[]*string)

	// Whether private_ip_list is allowed and controls the IPs to assign to the ENI and private_ips and private_ips_count become read-only. Default false.
	// +kubebuilder:validation:Optional
	privateIpListEnabled?: null | bool @go(PrivateIPListEnabled,*bool)

	// List of private IPs to assign to the ENI without regard to order.
	// +kubebuilder:validation:Optional
	privateIps?: [...null | string] @go(PrivateIps,[]*string)

	// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + private_ips_count, as a primary private IP will be assiged to an ENI by default.
	// +kubebuilder:validation:Optional
	privateIpsCount?: null | float64 @go(PrivateIpsCount,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// References to SecurityGroup to populate securityGroups.
	// +kubebuilder:validation:Optional
	securityGroupRefs?: [...v1.#Reference] @go(SecurityGroupRefs,[]v1.Reference)

	// Selector for a list of SecurityGroup to populate securityGroups.
	// +kubebuilder:validation:Optional
	securityGroupSelector?: null | v1.#Selector @go(SecurityGroupSelector,*v1.Selector)

	// List of security group IDs to assign to the ENI.
	// +crossplane:generate:reference:type=SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupSelector
	// +kubebuilder:validation:Optional
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// Whether to enable source destination checking for the ENI. Default true.
	// +kubebuilder:validation:Optional
	sourceDestCheck?: null | bool @go(SourceDestCheck,*bool)

	// Subnet ID to create the ENI in.
	// +crossplane:generate:reference:type=Subnet
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)

	// Reference to a Subnet to populate subnetId.
	// +kubebuilder:validation:Optional
	subnetIdRef?: null | v1.#Reference @go(SubnetIDRef,*v1.Reference)

	// Selector for a Subnet to populate subnetId.
	// +kubebuilder:validation:Optional
	subnetIdSelector?: null | v1.#Selector @go(SubnetIDSelector,*v1.Selector)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// NetworkInterfaceSpec defines the desired state of NetworkInterface
#NetworkInterfaceSpec: {
	v1.#ResourceSpec
	forProvider: #NetworkInterfaceParameters_2 @go(ForProvider)

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
	initProvider?: #NetworkInterfaceInitParameters_2 @go(InitProvider)
}

// NetworkInterfaceStatus defines the observed state of NetworkInterface.
#NetworkInterfaceStatus: {
	v1.#ResourceStatus
	atProvider?: #NetworkInterfaceObservation_2 @go(AtProvider)
}

// NetworkInterface is the Schema for the NetworkInterfaces API. Provides an Elastic network interface (ENI) resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#NetworkInterface: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta      @go(ObjectMeta)
	spec:      #NetworkInterfaceSpec   @go(Spec)
	status?:   #NetworkInterfaceStatus @go(Status)
}

// NetworkInterfaceList contains a list of NetworkInterfaces
#NetworkInterfaceList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#NetworkInterface] @go(Items,[]NetworkInterface)
}
