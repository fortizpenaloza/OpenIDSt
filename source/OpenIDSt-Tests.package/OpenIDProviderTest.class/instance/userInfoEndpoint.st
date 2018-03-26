accessing endpoints
userInfoEndpoint

	^ self issuerUrl addPathSegment: 'userinfo'