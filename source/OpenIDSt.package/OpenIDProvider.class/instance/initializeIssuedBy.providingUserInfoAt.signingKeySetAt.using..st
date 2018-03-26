initialization
initializeIssuedBy: anIssuer providingUserInfoAt: aUserInfoLocation signingKeySetAt: aJwkSetLocation using: anOAuth2Client

	issuer := anIssuer.
	userInfoEndpoint := aUserInfoLocation.
	jwkSetLocation := aJwkSetLocation.

	authorizationGrant := AuthorizationCodeGrant on: anOAuth2Client scopedTo: 'openid name profile picture'