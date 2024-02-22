// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/s3control/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#AccountLevelDetailedStatusCodeMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#AccountLevelDetailedStatusCodeMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#AccountLevelDetailedStatusCodeMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#AccountLevelInitParameters: {
	// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
	activityMetrics?: [...#ActivityMetricsInitParameters] @go(ActivityMetrics,[]ActivityMetricsInitParameters)

	// optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
	advancedCostOptimizationMetrics?: [...#AdvancedCostOptimizationMetricsInitParameters] @go(AdvancedCostOptimizationMetrics,[]AdvancedCostOptimizationMetricsInitParameters)

	// protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
	advancedDataProtectionMetrics?: [...#AdvancedDataProtectionMetricsInitParameters] @go(AdvancedDataProtectionMetrics,[]AdvancedDataProtectionMetricsInitParameters)

	// level configuration. See Bucket Level below for more details.
	bucketLevel?: [...#BucketLevelInitParameters] @go(BucketLevel,[]BucketLevelInitParameters)

	// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
	detailedStatusCodeMetrics?: [...#AccountLevelDetailedStatusCodeMetricsInitParameters] @go(DetailedStatusCodeMetrics,[]AccountLevelDetailedStatusCodeMetricsInitParameters)
}

#AccountLevelObservation: {
	// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
	activityMetrics?: [...#ActivityMetricsObservation] @go(ActivityMetrics,[]ActivityMetricsObservation)

	// optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
	advancedCostOptimizationMetrics?: [...#AdvancedCostOptimizationMetricsObservation] @go(AdvancedCostOptimizationMetrics,[]AdvancedCostOptimizationMetricsObservation)

	// protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
	advancedDataProtectionMetrics?: [...#AdvancedDataProtectionMetricsObservation] @go(AdvancedDataProtectionMetrics,[]AdvancedDataProtectionMetricsObservation)

	// level configuration. See Bucket Level below for more details.
	bucketLevel?: [...#BucketLevelObservation] @go(BucketLevel,[]BucketLevelObservation)

	// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
	detailedStatusCodeMetrics?: [...#AccountLevelDetailedStatusCodeMetricsObservation] @go(DetailedStatusCodeMetrics,[]AccountLevelDetailedStatusCodeMetricsObservation)
}

#AccountLevelParameters: {
	// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
	// +kubebuilder:validation:Optional
	activityMetrics?: [...#ActivityMetricsParameters] @go(ActivityMetrics,[]ActivityMetricsParameters)

	// optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
	// +kubebuilder:validation:Optional
	advancedCostOptimizationMetrics?: [...#AdvancedCostOptimizationMetricsParameters] @go(AdvancedCostOptimizationMetrics,[]AdvancedCostOptimizationMetricsParameters)

	// protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
	// +kubebuilder:validation:Optional
	advancedDataProtectionMetrics?: [...#AdvancedDataProtectionMetricsParameters] @go(AdvancedDataProtectionMetrics,[]AdvancedDataProtectionMetricsParameters)

	// level configuration. See Bucket Level below for more details.
	// +kubebuilder:validation:Optional
	bucketLevel: [...#BucketLevelParameters] @go(BucketLevel,[]BucketLevelParameters)

	// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
	// +kubebuilder:validation:Optional
	detailedStatusCodeMetrics?: [...#AccountLevelDetailedStatusCodeMetricsParameters] @go(DetailedStatusCodeMetrics,[]AccountLevelDetailedStatusCodeMetricsParameters)
}

#ActivityMetricsInitParameters: {
	// Whether the activity metrics are enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#ActivityMetricsObservation: {
	// Whether the activity metrics are enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#ActivityMetricsParameters: {
	// Whether the activity metrics are enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#AdvancedCostOptimizationMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#AdvancedCostOptimizationMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#AdvancedCostOptimizationMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#AdvancedDataProtectionMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#AdvancedDataProtectionMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#AdvancedDataProtectionMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#AwsOrgInitParameters: {
	// The Amazon Resource Name (ARN) of the bucket.
	arn?: null | string @go(Arn,*string)
}

#AwsOrgObservation: {
	// The Amazon Resource Name (ARN) of the bucket.
	arn?: null | string @go(Arn,*string)
}

#AwsOrgParameters: {
	// The Amazon Resource Name (ARN) of the bucket.
	// +kubebuilder:validation:Optional
	arn?: null | string @go(Arn,*string)
}

#BucketLevelActivityMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelActivityMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelActivityMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelAdvancedCostOptimizationMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelAdvancedCostOptimizationMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelAdvancedCostOptimizationMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelAdvancedDataProtectionMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelAdvancedDataProtectionMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelAdvancedDataProtectionMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#BucketLevelInitParameters: {
	// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
	activityMetrics?: [...#BucketLevelActivityMetricsInitParameters] @go(ActivityMetrics,[]BucketLevelActivityMetricsInitParameters)

	// optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
	advancedCostOptimizationMetrics?: [...#BucketLevelAdvancedCostOptimizationMetricsInitParameters] @go(AdvancedCostOptimizationMetrics,[]BucketLevelAdvancedCostOptimizationMetricsInitParameters)

	// protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
	advancedDataProtectionMetrics?: [...#BucketLevelAdvancedDataProtectionMetricsInitParameters] @go(AdvancedDataProtectionMetrics,[]BucketLevelAdvancedDataProtectionMetricsInitParameters)

	// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
	detailedStatusCodeMetrics?: [...#DetailedStatusCodeMetricsInitParameters] @go(DetailedStatusCodeMetrics,[]DetailedStatusCodeMetricsInitParameters)

	// level metrics for S3 Storage Lens. See Prefix Level below for more details.
	prefixLevel?: [...#PrefixLevelInitParameters] @go(PrefixLevel,[]PrefixLevelInitParameters)
}

#BucketLevelObservation: {
	// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
	activityMetrics?: [...#BucketLevelActivityMetricsObservation] @go(ActivityMetrics,[]BucketLevelActivityMetricsObservation)

	// optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
	advancedCostOptimizationMetrics?: [...#BucketLevelAdvancedCostOptimizationMetricsObservation] @go(AdvancedCostOptimizationMetrics,[]BucketLevelAdvancedCostOptimizationMetricsObservation)

	// protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
	advancedDataProtectionMetrics?: [...#BucketLevelAdvancedDataProtectionMetricsObservation] @go(AdvancedDataProtectionMetrics,[]BucketLevelAdvancedDataProtectionMetricsObservation)

	// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
	detailedStatusCodeMetrics?: [...#DetailedStatusCodeMetricsObservation] @go(DetailedStatusCodeMetrics,[]DetailedStatusCodeMetricsObservation)

	// level metrics for S3 Storage Lens. See Prefix Level below for more details.
	prefixLevel?: [...#PrefixLevelObservation] @go(PrefixLevel,[]PrefixLevelObservation)
}

#BucketLevelParameters: {
	// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
	// +kubebuilder:validation:Optional
	activityMetrics?: [...#BucketLevelActivityMetricsParameters] @go(ActivityMetrics,[]BucketLevelActivityMetricsParameters)

	// optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
	// +kubebuilder:validation:Optional
	advancedCostOptimizationMetrics?: [...#BucketLevelAdvancedCostOptimizationMetricsParameters] @go(AdvancedCostOptimizationMetrics,[]BucketLevelAdvancedCostOptimizationMetricsParameters)

	// protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
	// +kubebuilder:validation:Optional
	advancedDataProtectionMetrics?: [...#BucketLevelAdvancedDataProtectionMetricsParameters] @go(AdvancedDataProtectionMetrics,[]BucketLevelAdvancedDataProtectionMetricsParameters)

	// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
	// +kubebuilder:validation:Optional
	detailedStatusCodeMetrics?: [...#DetailedStatusCodeMetricsParameters] @go(DetailedStatusCodeMetrics,[]DetailedStatusCodeMetricsParameters)

	// level metrics for S3 Storage Lens. See Prefix Level below for more details.
	// +kubebuilder:validation:Optional
	prefixLevel?: [...#PrefixLevelParameters] @go(PrefixLevel,[]PrefixLevelParameters)
}

#CloudWatchMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#CloudWatchMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#CloudWatchMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#DataExportInitParameters: {
	// Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details.
	cloudWatchMetrics?: [...#CloudWatchMetricsInitParameters] @go(CloudWatchMetrics,[]CloudWatchMetricsInitParameters)

	// The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.
	s3BucketDestination?: [...#S3BucketDestinationInitParameters] @go(S3BucketDestination,[]S3BucketDestinationInitParameters)
}

#DataExportObservation: {
	// Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details.
	cloudWatchMetrics?: [...#CloudWatchMetricsObservation] @go(CloudWatchMetrics,[]CloudWatchMetricsObservation)

	// The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.
	s3BucketDestination?: [...#S3BucketDestinationObservation] @go(S3BucketDestination,[]S3BucketDestinationObservation)
}

#DataExportParameters: {
	// Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details.
	// +kubebuilder:validation:Optional
	cloudWatchMetrics?: [...#CloudWatchMetricsParameters] @go(CloudWatchMetrics,[]CloudWatchMetricsParameters)

	// The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.
	// +kubebuilder:validation:Optional
	s3BucketDestination?: [...#S3BucketDestinationParameters] @go(S3BucketDestination,[]S3BucketDestinationParameters)
}

#DetailedStatusCodeMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#DetailedStatusCodeMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#DetailedStatusCodeMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#EncryptionInitParameters: {
	// KMS encryption. See SSE KMS below for more details.
	sseKms?: [...#SseKMSInitParameters] @go(SseKMS,[]SseKMSInitParameters)

	// S3 encryption. An empty configuration block {} should be used.
	sseS3?: [...#SseS3InitParameters] @go(SseS3,[]SseS3InitParameters)
}

#EncryptionObservation: {
	// KMS encryption. See SSE KMS below for more details.
	sseKms?: [...#SseKMSObservation] @go(SseKMS,[]SseKMSObservation)

	// S3 encryption. An empty configuration block {} should be used.
	sseS3?: [...#SseS3Parameters] @go(SseS3,[]SseS3Parameters)
}

#EncryptionParameters: {
	// KMS encryption. See SSE KMS below for more details.
	// +kubebuilder:validation:Optional
	sseKms?: [...#SseKMSParameters] @go(SseKMS,[]SseKMSParameters)

	// S3 encryption. An empty configuration block {} should be used.
	// +kubebuilder:validation:Optional
	sseS3?: [...#SseS3Parameters] @go(SseS3,[]SseS3Parameters)
}

#ExcludeInitParameters: {
	// List of S3 bucket ARNs.
	buckets?: [...null | string] @go(Buckets,[]*string)

	// List of AWS Regions.
	regions?: [...null | string] @go(Regions,[]*string)
}

#ExcludeObservation: {
	// List of S3 bucket ARNs.
	buckets?: [...null | string] @go(Buckets,[]*string)

	// List of AWS Regions.
	regions?: [...null | string] @go(Regions,[]*string)
}

#ExcludeParameters: {
	// List of S3 bucket ARNs.
	// +kubebuilder:validation:Optional
	buckets?: [...null | string] @go(Buckets,[]*string)

	// List of AWS Regions.
	// +kubebuilder:validation:Optional
	regions?: [...null | string] @go(Regions,[]*string)
}

#IncludeInitParameters: {
	// List of S3 bucket ARNs.
	buckets?: [...null | string] @go(Buckets,[]*string)

	// List of AWS Regions.
	regions?: [...null | string] @go(Regions,[]*string)
}

#IncludeObservation: {
	// List of S3 bucket ARNs.
	buckets?: [...null | string] @go(Buckets,[]*string)

	// List of AWS Regions.
	regions?: [...null | string] @go(Regions,[]*string)
}

#IncludeParameters: {
	// List of S3 bucket ARNs.
	// +kubebuilder:validation:Optional
	buckets?: [...null | string] @go(Buckets,[]*string)

	// List of AWS Regions.
	// +kubebuilder:validation:Optional
	regions?: [...null | string] @go(Regions,[]*string)
}

#PrefixLevelInitParameters: {
	// level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
	storageMetrics?: [...#StorageMetricsInitParameters] @go(StorageMetrics,[]StorageMetricsInitParameters)
}

#PrefixLevelObservation: {
	// level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
	storageMetrics?: [...#StorageMetricsObservation] @go(StorageMetrics,[]StorageMetricsObservation)
}

#PrefixLevelParameters: {
	// level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
	// +kubebuilder:validation:Optional
	storageMetrics: [...#StorageMetricsParameters] @go(StorageMetrics,[]StorageMetricsParameters)
}

#S3BucketDestinationInitParameters: {
	// The account ID of the owner of the S3 Storage Lens metrics export bucket.
	accountId?: null | string @go(AccountID,*string)

	// Encryption of the metrics exports in this bucket. See Encryption below for more details.
	encryption?: [...#EncryptionInitParameters] @go(Encryption,[]EncryptionInitParameters)

	// The export format. Valid values: CSV, Parquet.
	format?: null | string @go(Format,*string)

	// The schema version of the export file. Valid values: V_1.
	outputSchemaVersion?: null | string @go(OutputSchemaVersion,*string)

	// The prefix of the destination bucket where the metrics export will be delivered.
	prefix?: null | string @go(Prefix,*string)
}

#S3BucketDestinationObservation: {
	// The account ID of the owner of the S3 Storage Lens metrics export bucket.
	accountId?: null | string @go(AccountID,*string)

	// The Amazon Resource Name (ARN) of the bucket.
	arn?: null | string @go(Arn,*string)

	// Encryption of the metrics exports in this bucket. See Encryption below for more details.
	encryption?: [...#EncryptionObservation] @go(Encryption,[]EncryptionObservation)

	// The export format. Valid values: CSV, Parquet.
	format?: null | string @go(Format,*string)

	// The schema version of the export file. Valid values: V_1.
	outputSchemaVersion?: null | string @go(OutputSchemaVersion,*string)

	// The prefix of the destination bucket where the metrics export will be delivered.
	prefix?: null | string @go(Prefix,*string)
}

#S3BucketDestinationParameters: {
	// The account ID of the owner of the S3 Storage Lens metrics export bucket.
	// +kubebuilder:validation:Optional
	accountId?: null | string @go(AccountID,*string)

	// The Amazon Resource Name (ARN) of the bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	arn?: null | string @go(Arn,*string)

	// Reference to a Bucket in s3 to populate arn.
	// +kubebuilder:validation:Optional
	arnRef?: null | v1.#Reference @go(ArnRef,*v1.Reference)

	// Selector for a Bucket in s3 to populate arn.
	// +kubebuilder:validation:Optional
	arnSelector?: null | v1.#Selector @go(ArnSelector,*v1.Selector)

	// Encryption of the metrics exports in this bucket. See Encryption below for more details.
	// +kubebuilder:validation:Optional
	encryption?: [...#EncryptionParameters] @go(Encryption,[]EncryptionParameters)

	// The export format. Valid values: CSV, Parquet.
	// +kubebuilder:validation:Optional
	format?: null | string @go(Format,*string)

	// The schema version of the export file. Valid values: V_1.
	// +kubebuilder:validation:Optional
	outputSchemaVersion?: null | string @go(OutputSchemaVersion,*string)

	// The prefix of the destination bucket where the metrics export will be delivered.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)
}

#SelectionCriteriaInitParameters: {
	// The delimiter of the selection criteria being used.
	delimiter?: null | string @go(Delimiter,*string)

	// The max depth of the selection criteria.
	maxDepth?: null | float64 @go(MaxDepth,*float64)

	// The minimum number of storage bytes percentage whose metrics will be selected.
	minStorageBytesPercentage?: null | float64 @go(MinStorageBytesPercentage,*float64)
}

#SelectionCriteriaObservation: {
	// The delimiter of the selection criteria being used.
	delimiter?: null | string @go(Delimiter,*string)

	// The max depth of the selection criteria.
	maxDepth?: null | float64 @go(MaxDepth,*float64)

	// The minimum number of storage bytes percentage whose metrics will be selected.
	minStorageBytesPercentage?: null | float64 @go(MinStorageBytesPercentage,*float64)
}

#SelectionCriteriaParameters: {
	// The delimiter of the selection criteria being used.
	// +kubebuilder:validation:Optional
	delimiter?: null | string @go(Delimiter,*string)

	// The max depth of the selection criteria.
	// +kubebuilder:validation:Optional
	maxDepth?: null | float64 @go(MaxDepth,*float64)

	// The minimum number of storage bytes percentage whose metrics will be selected.
	// +kubebuilder:validation:Optional
	minStorageBytesPercentage?: null | float64 @go(MinStorageBytesPercentage,*float64)
}

#SseKMSInitParameters: {
	// KMS key ARN.
	keyId?: null | string @go(KeyID,*string)
}

#SseKMSObservation: {
	// KMS key ARN.
	keyId?: null | string @go(KeyID,*string)
}

#SseKMSParameters: {
	// KMS key ARN.
	// +kubebuilder:validation:Optional
	keyId?: null | string @go(KeyID,*string)
}

#SseS3InitParameters: {
}

#SseS3Observation: {
}

#SseS3Parameters: {
}

#StorageLensConfigurationInitParameters: {
	// The AWS account ID for the S3 Storage Lens configuration.
	accountId?: null | string @go(AccountID,*string)

	// The ID of the S3 Storage Lens configuration.
	configId?: null | string @go(ConfigID,*string)

	// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
	storageLensConfiguration?: [...#StorageLensConfigurationStorageLensConfigurationInitParameters] @go(StorageLensConfiguration,[]StorageLensConfigurationStorageLensConfigurationInitParameters)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#StorageLensConfigurationObservation: {
	// The AWS account ID for the S3 Storage Lens configuration.
	accountId?: null | string @go(AccountID,*string)

	// Amazon Resource Name (ARN) of the S3 Storage Lens configuration.
	arn?: null | string @go(Arn,*string)

	// The ID of the S3 Storage Lens configuration.
	configId?: null | string @go(ConfigID,*string)
	id?:       null | string @go(ID,*string)

	// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
	storageLensConfiguration?: [...#StorageLensConfigurationStorageLensConfigurationObservation] @go(StorageLensConfiguration,[]StorageLensConfigurationStorageLensConfigurationObservation)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#StorageLensConfigurationParameters: {
	// The AWS account ID for the S3 Storage Lens configuration.
	// +kubebuilder:validation:Optional
	accountId?: null | string @go(AccountID,*string)

	// The ID of the S3 Storage Lens configuration.
	// +kubebuilder:validation:Optional
	configId?: null | string @go(ConfigID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
	// +kubebuilder:validation:Optional
	storageLensConfiguration?: [...#StorageLensConfigurationStorageLensConfigurationParameters] @go(StorageLensConfiguration,[]StorageLensConfigurationStorageLensConfigurationParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#StorageLensConfigurationStorageLensConfigurationInitParameters: {
	// level configurations of the S3 Storage Lens configuration. See Account Level below for more details.
	accountLevel?: [...#AccountLevelInitParameters] @go(AccountLevel,[]AccountLevelInitParameters)

	// The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details.
	awsOrg?: [...#AwsOrgInitParameters] @go(AwsOrg,[]AwsOrgInitParameters)

	// Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details.
	dataExport?: [...#DataExportInitParameters] @go(DataExport,[]DataExportInitParameters)

	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// What is excluded in this configuration. Conflicts with include. See Exclude below for more details.
	exclude?: [...#ExcludeInitParameters] @go(Exclude,[]ExcludeInitParameters)

	// What is included in this configuration. Conflicts with exclude. See Include below for more details.
	include?: [...#IncludeInitParameters] @go(Include,[]IncludeInitParameters)
}

#StorageLensConfigurationStorageLensConfigurationObservation: {
	// level configurations of the S3 Storage Lens configuration. See Account Level below for more details.
	accountLevel?: [...#AccountLevelObservation] @go(AccountLevel,[]AccountLevelObservation)

	// The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details.
	awsOrg?: [...#AwsOrgObservation] @go(AwsOrg,[]AwsOrgObservation)

	// Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details.
	dataExport?: [...#DataExportObservation] @go(DataExport,[]DataExportObservation)

	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// What is excluded in this configuration. Conflicts with include. See Exclude below for more details.
	exclude?: [...#ExcludeObservation] @go(Exclude,[]ExcludeObservation)

	// What is included in this configuration. Conflicts with exclude. See Include below for more details.
	include?: [...#IncludeObservation] @go(Include,[]IncludeObservation)
}

#StorageLensConfigurationStorageLensConfigurationParameters: {
	// level configurations of the S3 Storage Lens configuration. See Account Level below for more details.
	// +kubebuilder:validation:Optional
	accountLevel: [...#AccountLevelParameters] @go(AccountLevel,[]AccountLevelParameters)

	// The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details.
	// +kubebuilder:validation:Optional
	awsOrg?: [...#AwsOrgParameters] @go(AwsOrg,[]AwsOrgParameters)

	// Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details.
	// +kubebuilder:validation:Optional
	dataExport?: [...#DataExportParameters] @go(DataExport,[]DataExportParameters)

	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// What is excluded in this configuration. Conflicts with include. See Exclude below for more details.
	// +kubebuilder:validation:Optional
	exclude?: [...#ExcludeParameters] @go(Exclude,[]ExcludeParameters)

	// What is included in this configuration. Conflicts with exclude. See Include below for more details.
	// +kubebuilder:validation:Optional
	include?: [...#IncludeParameters] @go(Include,[]IncludeParameters)
}

#StorageMetricsInitParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// Selection criteria. See Selection Criteria below for more details.
	selectionCriteria?: [...#SelectionCriteriaInitParameters] @go(SelectionCriteria,[]SelectionCriteriaInitParameters)
}

#StorageMetricsObservation: {
	// Whether the S3 Storage Lens configuration is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// Selection criteria. See Selection Criteria below for more details.
	selectionCriteria?: [...#SelectionCriteriaObservation] @go(SelectionCriteria,[]SelectionCriteriaObservation)
}

#StorageMetricsParameters: {
	// Whether the S3 Storage Lens configuration is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Selection criteria. See Selection Criteria below for more details.
	// +kubebuilder:validation:Optional
	selectionCriteria?: [...#SelectionCriteriaParameters] @go(SelectionCriteria,[]SelectionCriteriaParameters)
}

// StorageLensConfigurationSpec defines the desired state of StorageLensConfiguration
#StorageLensConfigurationSpec: {
	v1.#ResourceSpec
	forProvider: #StorageLensConfigurationParameters @go(ForProvider)

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
	initProvider?: #StorageLensConfigurationInitParameters @go(InitProvider)
}

// StorageLensConfigurationStatus defines the observed state of StorageLensConfiguration.
#StorageLensConfigurationStatus: {
	v1.#ResourceStatus
	atProvider?: #StorageLensConfigurationObservation @go(AtProvider)
}

// StorageLensConfiguration is the Schema for the StorageLensConfigurations API. Provides a resource to manage an S3 Storage Lens configuration.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#StorageLensConfiguration: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.configId) || (has(self.initProvider) && has(self.initProvider.configId))",message="spec.forProvider.configId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.storageLensConfiguration) || (has(self.initProvider) && has(self.initProvider.storageLensConfiguration))",message="spec.forProvider.storageLensConfiguration is a required parameter"
	spec:    #StorageLensConfigurationSpec   @go(Spec)
	status?: #StorageLensConfigurationStatus @go(Status)
}

// StorageLensConfigurationList contains a list of StorageLensConfigurations
#StorageLensConfigurationList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#StorageLensConfiguration] @go(Items,[]StorageLensConfiguration)
}
