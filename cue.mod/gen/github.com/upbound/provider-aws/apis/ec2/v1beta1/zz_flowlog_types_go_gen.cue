// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#DestinationOptionsInitParameters: {
	// The format for the flow log. Default value: plain-text. Valid values: plain-text, parquet.
	fileFormat?: null | string @go(FileFormat,*string)

	// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: false.
	hiveCompatiblePartitions?: null | bool @go(HiveCompatiblePartitions,*bool)

	// Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: false.
	perHourPartition?: null | bool @go(PerHourPartition,*bool)
}

#DestinationOptionsObservation: {
	// The format for the flow log. Default value: plain-text. Valid values: plain-text, parquet.
	fileFormat?: null | string @go(FileFormat,*string)

	// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: false.
	hiveCompatiblePartitions?: null | bool @go(HiveCompatiblePartitions,*bool)

	// Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: false.
	perHourPartition?: null | bool @go(PerHourPartition,*bool)
}

#DestinationOptionsParameters: {
	// The format for the flow log. Default value: plain-text. Valid values: plain-text, parquet.
	// +kubebuilder:validation:Optional
	fileFormat?: null | string @go(FileFormat,*string)

	// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: false.
	// +kubebuilder:validation:Optional
	hiveCompatiblePartitions?: null | bool @go(HiveCompatiblePartitions,*bool)

	// Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: false.
	// +kubebuilder:validation:Optional
	perHourPartition?: null | bool @go(PerHourPartition,*bool)
}

#FlowLogInitParameters: {
	// ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
	deliverCrossAccountRole?: null | string @go(DeliverCrossAccountRole,*string)

	// Describes the destination options for a flow log. More details below.
	destinationOptions?: [...#DestinationOptionsInitParameters] @go(DestinationOptions,[]DestinationOptionsInitParameters)

	// Elastic Network Interface ID to attach to
	eniId?: null | string @go(EniID,*string)

	// The type of the logging destination. Valid values: cloud-watch-logs, s3, kinesis-data-firehose. Default: cloud-watch-logs.
	logDestinationType?: null | string @go(LogDestinationType,*string)

	// The fields to include in the flow log record, in the order in which they should appear.
	logFormat?: null | string @go(LogFormat,*string)

	// Deprecated: Use log_destination instead. The name of the CloudWatch log group. Either log_group_name or log_destination must be set.
	logGroupName?: null | string @go(LogGroupName,*string)

	// The maximum interval of time
	// during which a flow of packets is captured and aggregated into a flow
	// log record. Valid Values: 60 seconds (1 minute) or 600 seconds (10
	// minutes). Default: 600. When transit_gateway_id or transit_gateway_attachment_id is specified, max_aggregation_interval must be 60 seconds (1 minute).
	maxAggregationInterval?: null | float64 @go(MaxAggregationInterval,*float64)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL.
	trafficType?: null | string @go(TrafficType,*string)

	// Transit Gateway Attachment ID to attach to
	transitGatewayAttachmentId?: null | string @go(TransitGatewayAttachmentID,*string)

	// Transit Gateway ID to attach to
	transitGatewayId?: null | string @go(TransitGatewayID,*string)
}

#FlowLogObservation: {
	// The ARN of the Flow Log.
	arn?: null | string @go(Arn,*string)

	// ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
	deliverCrossAccountRole?: null | string @go(DeliverCrossAccountRole,*string)

	// Describes the destination options for a flow log. More details below.
	destinationOptions?: [...#DestinationOptionsObservation] @go(DestinationOptions,[]DestinationOptionsObservation)

	// Elastic Network Interface ID to attach to
	eniId?: null | string @go(EniID,*string)

	// The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group
	iamRoleArn?: null | string @go(IAMRoleArn,*string)

	// The Flow Log ID
	id?: null | string @go(ID,*string)

	// The ARN of the logging destination. Either log_destination or log_group_name must be set.
	logDestination?: null | string @go(LogDestination,*string)

	// The type of the logging destination. Valid values: cloud-watch-logs, s3, kinesis-data-firehose. Default: cloud-watch-logs.
	logDestinationType?: null | string @go(LogDestinationType,*string)

	// The fields to include in the flow log record, in the order in which they should appear.
	logFormat?: null | string @go(LogFormat,*string)

	// Deprecated: Use log_destination instead. The name of the CloudWatch log group. Either log_group_name or log_destination must be set.
	logGroupName?: null | string @go(LogGroupName,*string)

	// The maximum interval of time
	// during which a flow of packets is captured and aggregated into a flow
	// log record. Valid Values: 60 seconds (1 minute) or 600 seconds (10
	// minutes). Default: 600. When transit_gateway_id or transit_gateway_attachment_id is specified, max_aggregation_interval must be 60 seconds (1 minute).
	maxAggregationInterval?: null | float64 @go(MaxAggregationInterval,*float64)

	// Subnet ID to attach to
	subnetId?: null | string @go(SubnetID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL.
	trafficType?: null | string @go(TrafficType,*string)

	// Transit Gateway Attachment ID to attach to
	transitGatewayAttachmentId?: null | string @go(TransitGatewayAttachmentID,*string)

	// Transit Gateway ID to attach to
	transitGatewayId?: null | string @go(TransitGatewayID,*string)

	// VPC ID to attach to
	vpcId?: null | string @go(VPCID,*string)
}

#FlowLogParameters: {
	// ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
	// +kubebuilder:validation:Optional
	deliverCrossAccountRole?: null | string @go(DeliverCrossAccountRole,*string)

	// Describes the destination options for a flow log. More details below.
	// +kubebuilder:validation:Optional
	destinationOptions?: [...#DestinationOptionsParameters] @go(DestinationOptions,[]DestinationOptionsParameters)

	// Elastic Network Interface ID to attach to
	// +kubebuilder:validation:Optional
	eniId?: null | string @go(EniID,*string)

	// The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	iamRoleArn?: null | string @go(IAMRoleArn,*string)

	// Reference to a Role in iam to populate iamRoleArn.
	// +kubebuilder:validation:Optional
	iamRoleArnRef?: null | v1.#Reference @go(IAMRoleArnRef,*v1.Reference)

	// Selector for a Role in iam to populate iamRoleArn.
	// +kubebuilder:validation:Optional
	iamRoleArnSelector?: null | v1.#Selector @go(IAMRoleArnSelector,*v1.Selector)

	// The ARN of the logging destination. Either log_destination or log_group_name must be set.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cloudwatchlogs/v1beta1.Group
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	logDestination?: null | string @go(LogDestination,*string)

	// Reference to a Group in cloudwatchlogs to populate logDestination.
	// +kubebuilder:validation:Optional
	logDestinationRef?: null | v1.#Reference @go(LogDestinationRef,*v1.Reference)

	// Selector for a Group in cloudwatchlogs to populate logDestination.
	// +kubebuilder:validation:Optional
	logDestinationSelector?: null | v1.#Selector @go(LogDestinationSelector,*v1.Selector)

	// The type of the logging destination. Valid values: cloud-watch-logs, s3, kinesis-data-firehose. Default: cloud-watch-logs.
	// +kubebuilder:validation:Optional
	logDestinationType?: null | string @go(LogDestinationType,*string)

	// The fields to include in the flow log record, in the order in which they should appear.
	// +kubebuilder:validation:Optional
	logFormat?: null | string @go(LogFormat,*string)

	// Deprecated: Use log_destination instead. The name of the CloudWatch log group. Either log_group_name or log_destination must be set.
	// +kubebuilder:validation:Optional
	logGroupName?: null | string @go(LogGroupName,*string)

	// The maximum interval of time
	// during which a flow of packets is captured and aggregated into a flow
	// log record. Valid Values: 60 seconds (1 minute) or 600 seconds (10
	// minutes). Default: 600. When transit_gateway_id or transit_gateway_attachment_id is specified, max_aggregation_interval must be 60 seconds (1 minute).
	// +kubebuilder:validation:Optional
	maxAggregationInterval?: null | float64 @go(MaxAggregationInterval,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Subnet ID to attach to
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)

	// Reference to a Subnet in ec2 to populate subnetId.
	// +kubebuilder:validation:Optional
	subnetIdRef?: null | v1.#Reference @go(SubnetIDRef,*v1.Reference)

	// Selector for a Subnet in ec2 to populate subnetId.
	// +kubebuilder:validation:Optional
	subnetIdSelector?: null | v1.#Selector @go(SubnetIDSelector,*v1.Selector)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL.
	// +kubebuilder:validation:Optional
	trafficType?: null | string @go(TrafficType,*string)

	// Transit Gateway Attachment ID to attach to
	// +kubebuilder:validation:Optional
	transitGatewayAttachmentId?: null | string @go(TransitGatewayAttachmentID,*string)

	// Transit Gateway ID to attach to
	// +kubebuilder:validation:Optional
	transitGatewayId?: null | string @go(TransitGatewayID,*string)

	// VPC ID to attach to
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)

	// Reference to a VPC in ec2 to populate vpcId.
	// +kubebuilder:validation:Optional
	vpcIdRef?: null | v1.#Reference @go(VPCIDRef,*v1.Reference)

	// Selector for a VPC in ec2 to populate vpcId.
	// +kubebuilder:validation:Optional
	vpcIdSelector?: null | v1.#Selector @go(VPCIDSelector,*v1.Selector)
}

// FlowLogSpec defines the desired state of FlowLog
#FlowLogSpec: {
	v1.#ResourceSpec
	forProvider: #FlowLogParameters @go(ForProvider)

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
	initProvider?: #FlowLogInitParameters @go(InitProvider)
}

// FlowLogStatus defines the observed state of FlowLog.
#FlowLogStatus: {
	v1.#ResourceStatus
	atProvider?: #FlowLogObservation @go(AtProvider)
}

// FlowLog is the Schema for the FlowLogs API. Provides a VPC/Subnet/ENI Flow Log
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#FlowLog: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #FlowLogSpec       @go(Spec)
	status?:   #FlowLogStatus     @go(Status)
}

// FlowLogList contains a list of FlowLogs
#FlowLogList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#FlowLog] @go(Items,[]FlowLog)
}
