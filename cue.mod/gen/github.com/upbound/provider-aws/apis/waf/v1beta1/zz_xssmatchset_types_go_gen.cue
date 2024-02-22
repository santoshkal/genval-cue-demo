// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/waf/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#XSSMatchSetInitParameters: {
	// The name or description of the SizeConstraintSet.
	name?: null | string @go(Name,*string)

	// The parts of web requests that you want to inspect for cross-site scripting attacks.
	xssMatchTuples?: [...#XSSMatchTuplesInitParameters] @go(XSSMatchTuples,[]XSSMatchTuplesInitParameters)
}

#XSSMatchSetObservation: {
	// Amazon Resource Name (ARN)
	arn?: null | string @go(Arn,*string)

	// The ID of the WAF XssMatchSet.
	id?: null | string @go(ID,*string)

	// The name or description of the SizeConstraintSet.
	name?: null | string @go(Name,*string)

	// The parts of web requests that you want to inspect for cross-site scripting attacks.
	xssMatchTuples?: [...#XSSMatchTuplesObservation] @go(XSSMatchTuples,[]XSSMatchTuplesObservation)
}

#XSSMatchSetParameters: {
	// The name or description of the SizeConstraintSet.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The parts of web requests that you want to inspect for cross-site scripting attacks.
	// +kubebuilder:validation:Optional
	xssMatchTuples?: [...#XSSMatchTuplesParameters] @go(XSSMatchTuples,[]XSSMatchTuplesParameters)
}

#XSSMatchTuplesFieldToMatchInitParameters: {
	// When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referer.
	// If type is any other value, omit this field.
	data?: null | string @go(Data,*string)

	// The part of the web request that you want AWS WAF to search for a specified string.
	// e.g., HEADER, METHOD or BODY.
	// See docs
	// for all supported values.
	type?: null | string @go(Type,*string)
}

#XSSMatchTuplesFieldToMatchObservation: {
	// When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referer.
	// If type is any other value, omit this field.
	data?: null | string @go(Data,*string)

	// The part of the web request that you want AWS WAF to search for a specified string.
	// e.g., HEADER, METHOD or BODY.
	// See docs
	// for all supported values.
	type?: null | string @go(Type,*string)
}

#XSSMatchTuplesFieldToMatchParameters: {
	// When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referer.
	// If type is any other value, omit this field.
	// +kubebuilder:validation:Optional
	data?: null | string @go(Data,*string)

	// The part of the web request that you want AWS WAF to search for a specified string.
	// e.g., HEADER, METHOD or BODY.
	// See docs
	// for all supported values.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#XSSMatchTuplesInitParameters: {
	// Specifies where in a web request to look for cross-site scripting attacks.
	fieldToMatch?: [...#XSSMatchTuplesFieldToMatchInitParameters] @go(FieldToMatch,[]XSSMatchTuplesFieldToMatchInitParameters)

	// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
	// If you specify a transformation, AWS WAF performs the transformation on target_string before inspecting a request for a match.
	// e.g., CMD_LINE, HTML_ENTITY_DECODE or NONE.
	// See docs
	// for all supported values.
	textTransformation?: null | string @go(TextTransformation,*string)
}

#XSSMatchTuplesObservation: {
	// Specifies where in a web request to look for cross-site scripting attacks.
	fieldToMatch?: [...#XSSMatchTuplesFieldToMatchObservation] @go(FieldToMatch,[]XSSMatchTuplesFieldToMatchObservation)

	// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
	// If you specify a transformation, AWS WAF performs the transformation on target_string before inspecting a request for a match.
	// e.g., CMD_LINE, HTML_ENTITY_DECODE or NONE.
	// See docs
	// for all supported values.
	textTransformation?: null | string @go(TextTransformation,*string)
}

#XSSMatchTuplesParameters: {
	// Specifies where in a web request to look for cross-site scripting attacks.
	// +kubebuilder:validation:Optional
	fieldToMatch: [...#XSSMatchTuplesFieldToMatchParameters] @go(FieldToMatch,[]XSSMatchTuplesFieldToMatchParameters)

	// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
	// If you specify a transformation, AWS WAF performs the transformation on target_string before inspecting a request for a match.
	// e.g., CMD_LINE, HTML_ENTITY_DECODE or NONE.
	// See docs
	// for all supported values.
	// +kubebuilder:validation:Optional
	textTransformation?: null | string @go(TextTransformation,*string)
}

// XSSMatchSetSpec defines the desired state of XSSMatchSet
#XSSMatchSetSpec: {
	v1.#ResourceSpec
	forProvider: #XSSMatchSetParameters @go(ForProvider)

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
	initProvider?: #XSSMatchSetInitParameters @go(InitProvider)
}

// XSSMatchSetStatus defines the observed state of XSSMatchSet.
#XSSMatchSetStatus: {
	v1.#ResourceStatus
	atProvider?: #XSSMatchSetObservation @go(AtProvider)
}

// XSSMatchSet is the Schema for the XSSMatchSets API. Provides a AWS WAF XssMatchSet resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#XSSMatchSet: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #XSSMatchSetSpec   @go(Spec)
	status?: #XSSMatchSetStatus @go(Status)
}

// XSSMatchSetList contains a list of XSSMatchSets
#XSSMatchSetList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#XSSMatchSet] @go(Items,[]XSSMatchSet)
}