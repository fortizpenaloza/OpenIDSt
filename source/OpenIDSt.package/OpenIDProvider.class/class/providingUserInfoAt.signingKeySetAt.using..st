instance creation
providingUserInfoAt: aUserInfoLocation signingKeySetAt: aJWKSetLocation using: anOAuth2Client

	^ self new
		initializeProvidingUserInfoAt: aUserInfoLocation
		signingKeySetAt: aJWKSetLocation
		using: anOAuth2Client