initialization
initializeRedirectingResourceOwnerForAuthorizationTo: anAuthorizationEndpoint
		issuingTokensAt: aTokenEndpoint
		providingUserInfoAt: aUserInfoEndpoint
		signingKeySetAt: aSigningKeySetEndpoint

 	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: anAuthorizationEndpoint
		andIssuingTokensAt: aTokenEndpoint.
	
	userInfoEndpoint := aUserInfoEndpoint .
	jwkSetLocation := aSigningKeySetEndpoint 
 