// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/elasticache/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#CacheNodesInitParameters: {
}

#CacheNodesObservation: {
	address?: null | string @go(Address,*string)

	// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
	availabilityZone?: null | string @go(AvailabilityZone,*string)
	id?:               null | string @go(ID,*string)

	// The ARN of the created ElastiCache Cluster.
	outpostArn?: null | string @go(OutpostArn,*string)

	// create the resource.
	port?: null | float64 @go(Port,*float64)
}

#CacheNodesParameters: {
}

#ClusterInitParameters: {
	// Whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon ElastiCache Documentation for more information..
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
	// Only supported for engine type "redis" and if the engine version is 6 or higher.
	// Defaults to true.
	autoMinorVersionUpgrade?: null | string @go(AutoMinorVersionUpgrade,*string)

	// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. If you want to choose cross-az, num_cache_nodes must be greater than 1.
	azMode?: null | string @go(AzMode,*string)

	// –  Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis.
	engine?: null | string @go(Engine,*string)

	// –  Version number of the cache engine to be used.
	// If not set, defaults to the latest version.
	// See Describe Cache Engine Versions in the AWS Documentation for supported versions.
	// When engine is redis and the version is 6 or higher, the major and minor version can be set, e.g., 6.2,
	// or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x.
	// Otherwise, specify the full version desired, e.g., 5.0.6.
	// The actual engine version used is returned in the attribute engine_version_actual, see Attributes Reference below.
	engineVersion?: null | string @go(EngineVersion,*string)

	// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
	finalSnapshotIdentifier?: null | string @go(FinalSnapshotIdentifier,*string)

	// The IP version to advertise in the discovery protocol. Valid values are ipv4 or ipv6.
	ipDiscovery?: null | string @go(IPDiscovery,*string)

	// Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details.
	logDeliveryConfiguration?: [...#LogDeliveryConfigurationInitParameters] @go(LogDeliveryConfiguration,[]LogDeliveryConfigurationInitParameters)

	// ddd:hh24:mi (24H Clock UTC).
	// The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00.
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// The IP versions for cache cluster connections. IPv6 is supported with Redis engine 6.2 onword or Memcached version 1.6.6 for all Nitro system instances. Valid values are ipv4, ipv6 or dual_stack.
	networkType?: null | string @go(NetworkType,*string)

	// create the resource.
	nodeType?: null | string @go(NodeType,*string)

	// east-1:012345678999:my_sns_topic.
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// –  The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
	numCacheNodes?: null | float64 @go(NumCacheNodes,*float64)

	// Specify the outpost mode that will apply to the cache cluster creation. Valid values are "single-outpost" and "cross-outpost", however AWS currently only supports "single-outpost" mode.
	outpostMode?: null | string @go(OutpostMode,*string)

	// create the resource.
	port?: null | float64 @go(Port,*float64)

	// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
	preferredAvailabilityZones?: [...null | string] @go(PreferredAvailabilityZones,[]*string)

	// The outpost ARN in which the cache cluster will be created.
	preferredOutpostArn?: null | string @go(PreferredOutpostArn,*string)

	// create the resource.
	securityGroupNames?: [...null | string] @go(SecurityGroupNames,[]*string)

	// element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource.
	snapshotArns?: [...null | string] @go(SnapshotArns,[]*string)

	// Name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource.
	snapshotName?: null | string @go(SnapshotName,*string)

	// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes
	snapshotRetentionLimit?: null | float64 @go(SnapshotRetentionLimit,*float64)

	// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
	snapshotWindow?: null | string @go(SnapshotWindow,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ClusterObservation: {
	// Whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon ElastiCache Documentation for more information..
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// The ARN of the created ElastiCache Cluster.
	arn?: null | string @go(Arn,*string)

	// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
	// Only supported for engine type "redis" and if the engine version is 6 or higher.
	// Defaults to true.
	autoMinorVersionUpgrade?: null | string @go(AutoMinorVersionUpgrade,*string)

	// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. If you want to choose cross-az, num_cache_nodes must be greater than 1.
	azMode?: null | string @go(AzMode,*string)

	// List of node objects including id, address, port and availability_zone.
	cacheNodes?: [...#CacheNodesObservation] @go(CacheNodes,[]CacheNodesObservation)

	// (Memcached only) DNS name of the cache cluster without the port appended.
	clusterAddress?: null | string @go(ClusterAddress,*string)

	// (Memcached only) Configuration endpoint to allow host discovery.
	configurationEndpoint?: null | string @go(ConfigurationEndpoint,*string)

	// –  Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis.
	engine?: null | string @go(Engine,*string)

	// –  Version number of the cache engine to be used.
	// If not set, defaults to the latest version.
	// See Describe Cache Engine Versions in the AWS Documentation for supported versions.
	// When engine is redis and the version is 6 or higher, the major and minor version can be set, e.g., 6.2,
	// or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x.
	// Otherwise, specify the full version desired, e.g., 5.0.6.
	// The actual engine version used is returned in the attribute engine_version_actual, see Attributes Reference below.
	engineVersion?: null | string @go(EngineVersion,*string)

	// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
	engineVersionActual?: null | string @go(EngineVersionActual,*string)

	// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
	finalSnapshotIdentifier?: null | string @go(FinalSnapshotIdentifier,*string)
	id?:                      null | string @go(ID,*string)

	// The IP version to advertise in the discovery protocol. Valid values are ipv4 or ipv6.
	ipDiscovery?: null | string @go(IPDiscovery,*string)

	// Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details.
	logDeliveryConfiguration?: [...#LogDeliveryConfigurationObservation] @go(LogDeliveryConfiguration,[]LogDeliveryConfigurationObservation)

	// ddd:hh24:mi (24H Clock UTC).
	// The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00.
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// The IP versions for cache cluster connections. IPv6 is supported with Redis engine 6.2 onword or Memcached version 1.6.6 for all Nitro system instances. Valid values are ipv4, ipv6 or dual_stack.
	networkType?: null | string @go(NetworkType,*string)

	// create the resource.
	nodeType?: null | string @go(NodeType,*string)

	// east-1:012345678999:my_sns_topic.
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// –  The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
	numCacheNodes?: null | float64 @go(NumCacheNodes,*float64)

	// Specify the outpost mode that will apply to the cache cluster creation. Valid values are "single-outpost" and "cross-outpost", however AWS currently only supports "single-outpost" mode.
	outpostMode?: null | string @go(OutpostMode,*string)

	// –  The name of the parameter group to associate with this cache cluster.
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// create the resource.
	port?: null | float64 @go(Port,*float64)

	// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
	preferredAvailabilityZones?: [...null | string] @go(PreferredAvailabilityZones,[]*string)

	// The outpost ARN in which the cache cluster will be created.
	preferredOutpostArn?: null | string @go(PreferredOutpostArn,*string)

	// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
	replicationGroupId?: null | string @go(ReplicationGroupID,*string)

	// –  One or more VPC security groups associated with the cache cluster
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// create the resource.
	securityGroupNames?: [...null | string] @go(SecurityGroupNames,[]*string)

	// element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource.
	snapshotArns?: [...null | string] @go(SnapshotArns,[]*string)

	// Name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource.
	snapshotName?: null | string @go(SnapshotName,*string)

	// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes
	snapshotRetentionLimit?: null | float64 @go(SnapshotRetentionLimit,*float64)

	// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
	snapshotWindow?: null | string @go(SnapshotWindow,*string)

	// create the resource.
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ClusterParameters: {
	// Whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon ElastiCache Documentation for more information..
	// +kubebuilder:validation:Optional
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
	// Only supported for engine type "redis" and if the engine version is 6 or higher.
	// Defaults to true.
	// +kubebuilder:validation:Optional
	autoMinorVersionUpgrade?: null | string @go(AutoMinorVersionUpgrade,*string)

	// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
	// +kubebuilder:validation:Optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. If you want to choose cross-az, num_cache_nodes must be greater than 1.
	// +kubebuilder:validation:Optional
	azMode?: null | string @go(AzMode,*string)

	// –  Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis.
	// +kubebuilder:validation:Optional
	engine?: null | string @go(Engine,*string)

	// –  Version number of the cache engine to be used.
	// If not set, defaults to the latest version.
	// See Describe Cache Engine Versions in the AWS Documentation for supported versions.
	// When engine is redis and the version is 6 or higher, the major and minor version can be set, e.g., 6.2,
	// or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x.
	// Otherwise, specify the full version desired, e.g., 5.0.6.
	// The actual engine version used is returned in the attribute engine_version_actual, see Attributes Reference below.
	// +kubebuilder:validation:Optional
	engineVersion?: null | string @go(EngineVersion,*string)

	// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
	// +kubebuilder:validation:Optional
	finalSnapshotIdentifier?: null | string @go(FinalSnapshotIdentifier,*string)

	// The IP version to advertise in the discovery protocol. Valid values are ipv4 or ipv6.
	// +kubebuilder:validation:Optional
	ipDiscovery?: null | string @go(IPDiscovery,*string)

	// Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details.
	// +kubebuilder:validation:Optional
	logDeliveryConfiguration?: [...#LogDeliveryConfigurationParameters] @go(LogDeliveryConfiguration,[]LogDeliveryConfigurationParameters)

	// ddd:hh24:mi (24H Clock UTC).
	// The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00.
	// +kubebuilder:validation:Optional
	maintenanceWindow?: null | string @go(MaintenanceWindow,*string)

	// The IP versions for cache cluster connections. IPv6 is supported with Redis engine 6.2 onword or Memcached version 1.6.6 for all Nitro system instances. Valid values are ipv4, ipv6 or dual_stack.
	// +kubebuilder:validation:Optional
	networkType?: null | string @go(NetworkType,*string)

	// create the resource.
	// +kubebuilder:validation:Optional
	nodeType?: null | string @go(NodeType,*string)

	// east-1:012345678999:my_sns_topic.
	// +kubebuilder:validation:Optional
	notificationTopicArn?: null | string @go(NotificationTopicArn,*string)

	// –  The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
	// +kubebuilder:validation:Optional
	numCacheNodes?: null | float64 @go(NumCacheNodes,*float64)

	// Specify the outpost mode that will apply to the cache cluster creation. Valid values are "single-outpost" and "cross-outpost", however AWS currently only supports "single-outpost" mode.
	// +kubebuilder:validation:Optional
	outpostMode?: null | string @go(OutpostMode,*string)

	// –  The name of the parameter group to associate with this cache cluster.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elasticache/v1beta1.ParameterGroup
	// +kubebuilder:validation:Optional
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// Reference to a ParameterGroup in elasticache to populate parameterGroupName.
	// +kubebuilder:validation:Optional
	parameterGroupNameRef?: null | v1.#Reference @go(ParameterGroupNameRef,*v1.Reference)

	// Selector for a ParameterGroup in elasticache to populate parameterGroupName.
	// +kubebuilder:validation:Optional
	parameterGroupNameSelector?: null | v1.#Selector @go(ParameterGroupNameSelector,*v1.Selector)

	// create the resource.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
	// +kubebuilder:validation:Optional
	preferredAvailabilityZones?: [...null | string] @go(PreferredAvailabilityZones,[]*string)

	// The outpost ARN in which the cache cluster will be created.
	// +kubebuilder:validation:Optional
	preferredOutpostArn?: null | string @go(PreferredOutpostArn,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elasticache/v1beta1.ReplicationGroup
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	replicationGroupId?: null | string @go(ReplicationGroupID,*string)

	// Reference to a ReplicationGroup in elasticache to populate replicationGroupId.
	// +kubebuilder:validation:Optional
	replicationGroupIdRef?: null | v1.#Reference @go(ReplicationGroupIDRef,*v1.Reference)

	// Selector for a ReplicationGroup in elasticache to populate replicationGroupId.
	// +kubebuilder:validation:Optional
	replicationGroupIdSelector?: null | v1.#Selector @go(ReplicationGroupIDSelector,*v1.Selector)

	// References to SecurityGroup in ec2 to populate securityGroupIds.
	// +kubebuilder:validation:Optional
	securityGroupIdRefs?: [...v1.#Reference] @go(SecurityGroupIDRefs,[]v1.Reference)

	// Selector for a list of SecurityGroup in ec2 to populate securityGroupIds.
	// +kubebuilder:validation:Optional
	securityGroupIdSelector?: null | v1.#Selector @go(SecurityGroupIDSelector,*v1.Selector)

	// –  One or more VPC security groups associated with the cache cluster
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// create the resource.
	// +kubebuilder:validation:Optional
	securityGroupNames?: [...null | string] @go(SecurityGroupNames,[]*string)

	// element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource.
	// +kubebuilder:validation:Optional
	snapshotArns?: [...null | string] @go(SnapshotArns,[]*string)

	// Name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource.
	// +kubebuilder:validation:Optional
	snapshotName?: null | string @go(SnapshotName,*string)

	// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes
	// +kubebuilder:validation:Optional
	snapshotRetentionLimit?: null | float64 @go(SnapshotRetentionLimit,*float64)

	// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
	// +kubebuilder:validation:Optional
	snapshotWindow?: null | string @go(SnapshotWindow,*string)

	// create the resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elasticache/v1beta1.SubnetGroup
	// +kubebuilder:validation:Optional
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// Reference to a SubnetGroup in elasticache to populate subnetGroupName.
	// +kubebuilder:validation:Optional
	subnetGroupNameRef?: null | v1.#Reference @go(SubnetGroupNameRef,*v1.Reference)

	// Selector for a SubnetGroup in elasticache to populate subnetGroupName.
	// +kubebuilder:validation:Optional
	subnetGroupNameSelector?: null | v1.#Selector @go(SubnetGroupNameSelector,*v1.Selector)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#LogDeliveryConfigurationInitParameters: {
	// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
	destination?: null | string @go(Destination,*string)

	// For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose.
	destinationType?: null | string @go(DestinationType,*string)

	// Valid values are json or text
	logFormat?: null | string @go(LogFormat,*string)

	// Valid values are  slow-log or engine-log. Max 1 of each.
	logType?: null | string @go(LogType,*string)
}

#LogDeliveryConfigurationObservation: {
	// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
	destination?: null | string @go(Destination,*string)

	// For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose.
	destinationType?: null | string @go(DestinationType,*string)

	// Valid values are json or text
	logFormat?: null | string @go(LogFormat,*string)

	// Valid values are  slow-log or engine-log. Max 1 of each.
	logType?: null | string @go(LogType,*string)
}

#LogDeliveryConfigurationParameters: {
	// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
	// +kubebuilder:validation:Optional
	destination?: null | string @go(Destination,*string)

	// For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose.
	// +kubebuilder:validation:Optional
	destinationType?: null | string @go(DestinationType,*string)

	// Valid values are json or text
	// +kubebuilder:validation:Optional
	logFormat?: null | string @go(LogFormat,*string)

	// Valid values are  slow-log or engine-log. Max 1 of each.
	// +kubebuilder:validation:Optional
	logType?: null | string @go(LogType,*string)
}

// ClusterSpec defines the desired state of Cluster
#ClusterSpec: {
	v1.#ResourceSpec
	forProvider: #ClusterParameters @go(ForProvider)

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
	initProvider?: #ClusterInitParameters @go(InitProvider)
}

// ClusterStatus defines the observed state of Cluster.
#ClusterStatus: {
	v1.#ResourceStatus
	atProvider?: #ClusterObservation @go(AtProvider)
}

// Cluster is the Schema for the Clusters API. Provides an ElastiCache Cluster resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Cluster: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #ClusterSpec       @go(Spec)
	status?:   #ClusterStatus     @go(Status)
}

// ClusterList contains a list of Clusters
#ClusterList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Cluster] @go(Items,[]Cluster)
}