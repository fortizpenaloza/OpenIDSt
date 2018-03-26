instance creation
issuedBy: anIssuer providingUserInfoAt: aUserInfoLocation signingKeySetAt: aJWKSetLocation using: anOAuth2Client

	^ self new
		initializeIssuedBy: anIssuer
		providingUserInfoAt: aUserInfoLocation
		signingKeySetAt: aJWKSetLocation
		using: anOAuth2Client