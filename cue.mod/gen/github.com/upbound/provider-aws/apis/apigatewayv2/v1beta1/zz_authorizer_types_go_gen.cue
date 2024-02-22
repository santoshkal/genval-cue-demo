// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigatewayv2/v1beta1

package v1beta1

import (
	"github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#AuthorizerInitParameters: {
	// Required credentials as an IAM role for API Gateway to invoke the authorizer.
	// Supported only for REQUEST authorizers.
	authorizerCredentialsArn?: null | string @go(AuthorizerCredentialsArn,*string)

	// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
	// Valid values: 1.0, 2.0.
	authorizerPayloadFormatVersion?: null | string @go(AuthorizerPayloadFormatVersion,*string)

	// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
	// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to 300.
	// Supported only for HTTP API Lambda authorizers.
	authorizerResultTtlInSeconds?: null | float64 @go(AuthorizerResultTTLInSeconds,*float64)

	// Authorizer type. Valid values: JWT, REQUEST.
	// Specify REQUEST for a Lambda function using incoming request parameters.
	// For HTTP APIs, specify JWT to use JSON Web Tokens.
	authorizerType?: null | string @go(AuthorizerType,*string)

	// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
	// Supported only for HTTP APIs.
	enableSimpleResponses?: null | bool @go(EnableSimpleResponses,*bool)

	// Identity sources for which authorization is requested.
	// For REQUEST authorizers the value is a list of one or more mapping expressions of the specified request parameters.
	// For JWT authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
	identitySources?: [...null | string] @go(IdentitySources,[]*string)

	// Configuration of a JWT authorizer. Required for the JWT authorizer type.
	// Supported only for HTTP APIs.
	jwtConfiguration?: [...#JwtConfigurationInitParameters] @go(JwtConfiguration,[]JwtConfigurationInitParameters)

	// Name of the authorizer. Must be between 1 and 128 characters in length.
	name?: null | string @go(Name,*string)
}

#AuthorizerObservation: {
	// API identifier.
	apiId?: null | string @go(APIID,*string)

	// Required credentials as an IAM role for API Gateway to invoke the authorizer.
	// Supported only for REQUEST authorizers.
	authorizerCredentialsArn?: null | string @go(AuthorizerCredentialsArn,*string)

	// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
	// Valid values: 1.0, 2.0.
	authorizerPayloadFormatVersion?: null | string @go(AuthorizerPayloadFormatVersion,*string)

	// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
	// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to 300.
	// Supported only for HTTP API Lambda authorizers.
	authorizerResultTtlInSeconds?: null | float64 @go(AuthorizerResultTTLInSeconds,*float64)

	// Authorizer type. Valid values: JWT, REQUEST.
	// Specify REQUEST for a Lambda function using incoming request parameters.
	// For HTTP APIs, specify JWT to use JSON Web Tokens.
	authorizerType?: null | string @go(AuthorizerType,*string)

	// Authorizer's Uniform Resource Identifier (URI).
	// For REQUEST authorizers this must be a well-formed Lambda function URI, such as the invoke_arn attribute of the aws_lambda_function resource.
	// Supported only for REQUEST authorizers. Must be between 1 and 2048 characters in length.
	authorizerUri?: null | string @go(AuthorizerURI,*string)

	// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
	// Supported only for HTTP APIs.
	enableSimpleResponses?: null | bool @go(EnableSimpleResponses,*bool)

	// Authorizer identifier.
	id?: null | string @go(ID,*string)

	// Identity sources for which authorization is requested.
	// For REQUEST authorizers the value is a list of one or more mapping expressions of the specified request parameters.
	// For JWT authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
	identitySources?: [...null | string] @go(IdentitySources,[]*string)

	// Configuration of a JWT authorizer. Required for the JWT authorizer type.
	// Supported only for HTTP APIs.
	jwtConfiguration?: [...#JwtConfigurationObservation] @go(JwtConfiguration,[]JwtConfigurationObservation)

	// Name of the authorizer. Must be between 1 and 128 characters in length.
	name?: null | string @go(Name,*string)
}

#AuthorizerParameters: {
	// API identifier.
	// +crossplane:generate:reference:type=API
	// +kubebuilder:validation:Optional
	apiId?: null | string @go(APIID,*string)

	// Reference to a API to populate apiId.
	// +kubebuilder:validation:Optional
	apiIdRef?: null | v1.#Reference @go(APIIDRef,*v1.Reference)

	// Selector for a API to populate apiId.
	// +kubebuilder:validation:Optional
	apiIdSelector?: null | v1.#Selector @go(APIIDSelector,*v1.Selector)

	// Required credentials as an IAM role for API Gateway to invoke the authorizer.
	// Supported only for REQUEST authorizers.
	// +kubebuilder:validation:Optional
	authorizerCredentialsArn?: null | string @go(AuthorizerCredentialsArn,*string)

	// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
	// Valid values: 1.0, 2.0.
	// +kubebuilder:validation:Optional
	authorizerPayloadFormatVersion?: null | string @go(AuthorizerPayloadFormatVersion,*string)

	// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
	// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to 300.
	// Supported only for HTTP API Lambda authorizers.
	// +kubebuilder:validation:Optional
	authorizerResultTtlInSeconds?: null | float64 @go(AuthorizerResultTTLInSeconds,*float64)

	// Authorizer type. Valid values: JWT, REQUEST.
	// Specify REQUEST for a Lambda function using incoming request parameters.
	// For HTTP APIs, specify JWT to use JSON Web Tokens.
	// +kubebuilder:validation:Optional
	authorizerType?: null | string @go(AuthorizerType,*string)

	// Authorizer's Uniform Resource Identifier (URI).
	// For REQUEST authorizers this must be a well-formed Lambda function URI, such as the invoke_arn attribute of the aws_lambda_function resource.
	// Supported only for REQUEST authorizers. Must be between 1 and 2048 characters in length.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/lambda/v1beta1.Function
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/apis/lambda/v1beta1.LambdaFunctionInvokeARN()
	// +kubebuilder:validation:Optional
	authorizerUri?: null | string @go(AuthorizerURI,*string)

	// Reference to a Function in lambda to populate authorizerUri.
	// +kubebuilder:validation:Optional
	authorizerUriRef?: null | v1.#Reference @go(AuthorizerURIRef,*v1.Reference)

	// Selector for a Function in lambda to populate authorizerUri.
	// +kubebuilder:validation:Optional
	authorizerUriSelector?: null | v1.#Selector @go(AuthorizerURISelector,*v1.Selector)

	// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
	// Supported only for HTTP APIs.
	// +kubebuilder:validation:Optional
	enableSimpleResponses?: null | bool @go(EnableSimpleResponses,*bool)

	// Identity sources for which authorization is requested.
	// For REQUEST authorizers the value is a list of one or more mapping expressions of the specified request parameters.
	// For JWT authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
	// +kubebuilder:validation:Optional
	identitySources?: [...null | string] @go(IdentitySources,[]*string)

	// Configuration of a JWT authorizer. Required for the JWT authorizer type.
	// Supported only for HTTP APIs.
	// +kubebuilder:validation:Optional
	jwtConfiguration?: [...#JwtConfigurationParameters] @go(JwtConfiguration,[]JwtConfigurationParameters)

	// Name of the authorizer. Must be between 1 and 128 characters in length.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#JwtConfigurationInitParameters: {
	// List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list.
	audience?: [...null | string] @go(Audience,[]*string)

	// Base domain of the identity provider that issues JSON Web Tokens, such as the endpoint attribute of the aws_cognito_user_pool resource.
	issuer?: null | string @go(Issuer,*string)
}

#JwtConfigurationObservation: {
	// List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list.
	audience?: [...null | string] @go(Audience,[]*string)

	// Base domain of the identity provider that issues JSON Web Tokens, such as the endpoint attribute of the aws_cognito_user_pool resource.
	issuer?: null | string @go(Issuer,*string)
}

#JwtConfigurationParameters: {
	// List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list.
	// +kubebuilder:validation:Optional
	audience?: [...null | string] @go(Audience,[]*string)

	// Base domain of the identity provider that issues JSON Web Tokens, such as the endpoint attribute of the aws_cognito_user_pool resource.
	// +kubebuilder:validation:Optional
	issuer?: null | string @go(Issuer,*string)
}

// AuthorizerSpec defines the desired state of Authorizer
#AuthorizerSpec: {
	v1.#ResourceSpec
	forProvider: #AuthorizerParameters @go(ForProvider)

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
	initProvider?: #AuthorizerInitParameters @go(InitProvider)
}

// AuthorizerStatus defines the observed state of Authorizer.
#AuthorizerStatus: {
	v1.#ResourceStatus
	atProvider?: #AuthorizerObservation @go(AtProvider)
}

// Authorizer is the Schema for the Authorizers API. Manages an Amazon API Gateway Version 2 authorizer.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Authorizer: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.authorizerType) || (has(self.initProvider) && has(self.initProvider.authorizerType))",message="spec.forProvider.authorizerType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #AuthorizerSpec   @go(Spec)
	status?: #AuthorizerStatus @go(Status)
}

// AuthorizerList contains a list of Authorizers
#AuthorizerList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Authorizer] @go(Items,[]Authorizer)
}
