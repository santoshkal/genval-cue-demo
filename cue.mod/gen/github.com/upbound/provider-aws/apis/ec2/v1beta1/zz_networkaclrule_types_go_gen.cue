// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#NetworkACLRuleInitParameters: {
	// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
	cidrBlock?: null | string @go(CidrBlock,*string)

	// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default false.
	egress?: null | bool @go(Egress,*bool)

	// The from port to match.
	fromPort?: null | float64 @go(FromPort,*float64)

	// The IPv6 CIDR block to allow or deny.
	ipv6CidrBlock?: null | string @go(IPv6CidrBlock,*string)

	// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
	icmpCode?: null | float64 @go(IcmpCode,*float64)

	// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
	icmpType?: null | float64 @go(IcmpType,*float64)

	// The protocol. A value of -1 means all protocols.
	protocol?: null | string @go(Protocol,*string)

	// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: allow | deny
	ruleAction?: null | string @go(RuleAction,*string)

	// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
	ruleNumber?: null | float64 @go(RuleNumber,*float64)

	// The to port to match.
	toPort?: null | float64 @go(ToPort,*float64)
}

#NetworkACLRuleObservation: {
	// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
	cidrBlock?: null | string @go(CidrBlock,*string)

	// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default false.
	egress?: null | bool @go(Egress,*bool)

	// The from port to match.
	fromPort?: null | float64 @go(FromPort,*float64)

	// The ID of the network ACL Rule
	id?: null | string @go(ID,*string)

	// The IPv6 CIDR block to allow or deny.
	ipv6CidrBlock?: null | string @go(IPv6CidrBlock,*string)

	// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
	icmpCode?: null | float64 @go(IcmpCode,*float64)

	// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
	icmpType?: null | float64 @go(IcmpType,*float64)

	// The ID of the network ACL.
	networkAclId?: null | string @go(NetworkACLID,*string)

	// The protocol. A value of -1 means all protocols.
	protocol?: null | string @go(Protocol,*string)

	// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: allow | deny
	ruleAction?: null | string @go(RuleAction,*string)

	// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
	ruleNumber?: null | float64 @go(RuleNumber,*float64)

	// The to port to match.
	toPort?: null | float64 @go(ToPort,*float64)
}

#NetworkACLRuleParameters: {
	// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
	// +kubebuilder:validation:Optional
	cidrBlock?: null | string @go(CidrBlock,*string)

	// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default false.
	// +kubebuilder:validation:Optional
	egress?: null | bool @go(Egress,*bool)

	// The from port to match.
	// +kubebuilder:validation:Optional
	fromPort?: null | float64 @go(FromPort,*float64)

	// The IPv6 CIDR block to allow or deny.
	// +kubebuilder:validation:Optional
	ipv6CidrBlock?: null | string @go(IPv6CidrBlock,*string)

	// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
	// +kubebuilder:validation:Optional
	icmpCode?: null | float64 @go(IcmpCode,*float64)

	// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
	// +kubebuilder:validation:Optional
	icmpType?: null | float64 @go(IcmpType,*float64)

	// The ID of the network ACL.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.NetworkACL
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	networkAclId?: null | string @go(NetworkACLID,*string)

	// Reference to a NetworkACL in ec2 to populate networkAclId.
	// +kubebuilder:validation:Optional
	networkAclIdRef?: null | v1.#Reference @go(NetworkACLIDRef,*v1.Reference)

	// Selector for a NetworkACL in ec2 to populate networkAclId.
	// +kubebuilder:validation:Optional
	networkAclIdSelector?: null | v1.#Selector @go(NetworkACLIDSelector,*v1.Selector)

	// The protocol. A value of -1 means all protocols.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: allow | deny
	// +kubebuilder:validation:Optional
	ruleAction?: null | string @go(RuleAction,*string)

	// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
	// +kubebuilder:validation:Optional
	ruleNumber?: null | float64 @go(RuleNumber,*float64)

	// The to port to match.
	// +kubebuilder:validation:Optional
	toPort?: null | float64 @go(ToPort,*float64)
}

// NetworkACLRuleSpec defines the desired state of NetworkACLRule
#NetworkACLRuleSpec: {
	v1.#ResourceSpec
	forProvider: #NetworkACLRuleParameters @go(ForProvider)

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
	initProvider?: #NetworkACLRuleInitParameters @go(InitProvider)
}

// NetworkACLRuleStatus defines the observed state of NetworkACLRule.
#NetworkACLRuleStatus: {
	v1.#ResourceStatus
	atProvider?: #NetworkACLRuleObservation @go(AtProvider)
}

// NetworkACLRule is the Schema for the NetworkACLRules API. Provides an network ACL Rule resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#NetworkACLRule: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.protocol) || (has(self.initProvider) && has(self.initProvider.protocol))",message="spec.forProvider.protocol is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ruleAction) || (has(self.initProvider) && has(self.initProvider.ruleAction))",message="spec.forProvider.ruleAction is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ruleNumber) || (has(self.initProvider) && has(self.initProvider.ruleNumber))",message="spec.forProvider.ruleNumber is a required parameter"
	spec:    #NetworkACLRuleSpec   @go(Spec)
	status?: #NetworkACLRuleStatus @go(Status)
}

// NetworkACLRuleList contains a list of NetworkACLRules
#NetworkACLRuleList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#NetworkACLRule] @go(Items,[]NetworkACLRule)
}
