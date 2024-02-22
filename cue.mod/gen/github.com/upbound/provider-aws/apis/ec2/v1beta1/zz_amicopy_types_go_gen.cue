// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#AMICopyEBSBlockDeviceInitParameters: {
}

#AMICopyEBSBlockDeviceObservation: {
	deleteOnTermination?: null | bool @go(DeleteOnTermination,*bool)

	// Region-unique name for the AMI.
	deviceName?: null | string @go(DeviceName,*string)

	// Whether the destination snapshots of the copied image should be encrypted. Defaults to false
	encrypted?: null | bool    @go(Encrypted,*bool)
	iops?:      null | float64 @go(Iops,*float64)

	// ARN of the AMI.
	outpostArn?: null | string @go(OutpostArn,*string)

	// ID of the created AMI.
	snapshotId?: null | string  @go(SnapshotID,*string)
	throughput?: null | float64 @go(Throughput,*float64)
	volumeSize?: null | float64 @go(VolumeSize,*float64)
	volumeType?: null | string  @go(VolumeType,*string)
}

#AMICopyEBSBlockDeviceParameters: {
}

#AMICopyEphemeralBlockDeviceInitParameters: {
}

#AMICopyEphemeralBlockDeviceObservation: {
	// Region-unique name for the AMI.
	deviceName?: null | string @go(DeviceName,*string)

	// Region-unique name for the AMI.
	virtualName?: null | string @go(VirtualName,*string)
}

#AMICopyEphemeralBlockDeviceParameters: {
}

#AMICopyInitParameters: {
	deprecationTime?: null | string @go(DeprecationTime,*string)
	description?:     null | string @go(Description,*string)

	// ARN of the Outpost to which to copy the AMI.
	// Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost.
	destinationOutpostArn?: null | string @go(DestinationOutpostArn,*string)
	ebsBlockDevice?: [...#AMICopyEBSBlockDeviceInitParameters] @go(EBSBlockDevice,[]AMICopyEBSBlockDeviceInitParameters)

	// Whether the destination snapshots of the copied image should be encrypted. Defaults to false
	encrypted?: null | bool @go(Encrypted,*bool)
	ephemeralBlockDevice?: [...#AMICopyEphemeralBlockDeviceInitParameters] @go(EphemeralBlockDevice,[]AMICopyEphemeralBlockDeviceInitParameters)

	// Region-unique name for the AMI.
	name?: null | string @go(Name,*string)

	// Region from which the AMI will be copied. This may be the
	// same as the AWS provider region in order to create a copy within the same region.
	sourceAmiRegion?: null | string @go(SourceAMIRegion,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AMICopyObservation: {
	architecture?: null | string @go(Architecture,*string)

	// ARN of the AMI.
	arn?:             null | string @go(Arn,*string)
	bootMode?:        null | string @go(BootMode,*string)
	deprecationTime?: null | string @go(DeprecationTime,*string)
	description?:     null | string @go(Description,*string)

	// ARN of the Outpost to which to copy the AMI.
	// Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost.
	destinationOutpostArn?: null | string @go(DestinationOutpostArn,*string)
	ebsBlockDevice?: [...#AMICopyEBSBlockDeviceObservation] @go(EBSBlockDevice,[]AMICopyEBSBlockDeviceObservation)
	enaSupport?: null | bool @go(EnaSupport,*bool)

	// Whether the destination snapshots of the copied image should be encrypted. Defaults to false
	encrypted?: null | bool @go(Encrypted,*bool)
	ephemeralBlockDevice?: [...#AMICopyEphemeralBlockDeviceObservation] @go(EphemeralBlockDevice,[]AMICopyEphemeralBlockDeviceObservation)
	hypervisor?: null | string @go(Hypervisor,*string)

	// ID of the created AMI.
	id?:              null | string @go(ID,*string)
	imageLocation?:   null | string @go(ImageLocation,*string)
	imageOwnerAlias?: null | string @go(ImageOwnerAlias,*string)
	imageType?:       null | string @go(ImageType,*string)
	imdsSupport?:     null | string @go(ImdsSupport,*string)

	// Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// ID of the created AMI.
	kernelId?:           null | string @go(KernelID,*string)
	manageEbsSnapshots?: null | bool   @go(ManageEBSSnapshots,*bool)

	// Region-unique name for the AMI.
	name?: null | string @go(Name,*string)

	// ID of the created AMI.
	ownerId?:         null | string @go(OwnerID,*string)
	platform?:        null | string @go(Platform,*string)
	platformDetails?: null | string @go(PlatformDetails,*string)
	public?:          null | bool   @go(Public,*bool)

	// ID of the created AMI.
	ramdiskId?: null | string @go(RamdiskID,*string)

	// Region-unique name for the AMI.
	rootDeviceName?: null | string @go(RootDeviceName,*string)

	// ID of the created AMI.
	rootSnapshotId?: null | string @go(RootSnapshotID,*string)

	// Id of the AMI to copy. This id must be valid in the region
	// given by source_ami_region.
	sourceAmiId?: null | string @go(SourceAMIID,*string)

	// Region from which the AMI will be copied. This may be the
	// same as the AWS provider region in order to create a copy within the same region.
	sourceAmiRegion?: null | string @go(SourceAMIRegion,*string)
	sriovNetSupport?: null | string @go(SriovNetSupport,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
	tpmSupport?:         null | string @go(TpmSupport,*string)
	usageOperation?:     null | string @go(UsageOperation,*string)
	virtualizationType?: null | string @go(VirtualizationType,*string)
}

#AMICopyParameters: {
	// +kubebuilder:validation:Optional
	deprecationTime?: null | string @go(DeprecationTime,*string)

	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// ARN of the Outpost to which to copy the AMI.
	// Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost.
	// +kubebuilder:validation:Optional
	destinationOutpostArn?: null | string @go(DestinationOutpostArn,*string)

	// +kubebuilder:validation:Optional
	ebsBlockDevice?: [...#AMICopyEBSBlockDeviceParameters] @go(EBSBlockDevice,[]AMICopyEBSBlockDeviceParameters)

	// Whether the destination snapshots of the copied image should be encrypted. Defaults to false
	// +kubebuilder:validation:Optional
	encrypted?: null | bool @go(Encrypted,*bool)

	// +kubebuilder:validation:Optional
	ephemeralBlockDevice?: [...#AMICopyEphemeralBlockDeviceParameters] @go(EphemeralBlockDevice,[]AMICopyEphemeralBlockDeviceParameters)

	// Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Reference to a Key in kms to populate kmsKeyId.
	// +kubebuilder:validation:Optional
	kmsKeyIdRef?: null | v1.#Reference @go(KMSKeyIDRef,*v1.Reference)

	// Selector for a Key in kms to populate kmsKeyId.
	// +kubebuilder:validation:Optional
	kmsKeyIdSelector?: null | v1.#Selector @go(KMSKeyIDSelector,*v1.Selector)

	// Region-unique name for the AMI.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Id of the AMI to copy. This id must be valid in the region
	// given by source_ami_region.
	// +crossplane:generate:reference:type=AMI
	// +kubebuilder:validation:Optional
	sourceAmiId?: null | string @go(SourceAMIID,*string)

	// Reference to a AMI to populate sourceAmiId.
	// +kubebuilder:validation:Optional
	sourceAmiIdRef?: null | v1.#Reference @go(SourceAMIIDRef,*v1.Reference)

	// Selector for a AMI to populate sourceAmiId.
	// +kubebuilder:validation:Optional
	sourceAmiIdSelector?: null | v1.#Selector @go(SourceAMIIDSelector,*v1.Selector)

	// Region from which the AMI will be copied. This may be the
	// same as the AWS provider region in order to create a copy within the same region.
	// +kubebuilder:validation:Optional
	sourceAmiRegion?: null | string @go(SourceAMIRegion,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// AMICopySpec defines the desired state of AMICopy
#AMICopySpec: {
	v1.#ResourceSpec
	forProvider: #AMICopyParameters @go(ForProvider)

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
	initProvider?: #AMICopyInitParameters @go(InitProvider)
}

// AMICopyStatus defines the observed state of AMICopy.
#AMICopyStatus: {
	v1.#ResourceStatus
	atProvider?: #AMICopyObservation @go(AtProvider)
}

// AMICopy is the Schema for the AMICopys API. Duplicates an existing Amazon Machine Image (AMI)
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AMICopy: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sourceAmiRegion) || (has(self.initProvider) && has(self.initProvider.sourceAmiRegion))",message="spec.forProvider.sourceAmiRegion is a required parameter"
	spec:    #AMICopySpec   @go(Spec)
	status?: #AMICopyStatus @go(Status)
}

// AMICopyList contains a list of AMICopys
#AMICopyList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#AMICopy] @go(Items,[]AMICopy)
}
