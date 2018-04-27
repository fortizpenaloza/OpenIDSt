initialization
initializeProvidingUserInfoAt: aUserInfoLocation signingKeySetAt: aJwkSetLocation using: aRelayingParty

	userInfoEndpoint := aUserInfoLocation.
	jwkSetLocation := aJwkSetLocation.

	authorizationGrant := AuthorizationCodeGrant 
		on: aRelayingParty
		scopedTo: 'openid name profile picture'