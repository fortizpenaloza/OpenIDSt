accessing endpoints
jwksEndpoint

	^ self issuerUrl addPathSegments: #('.well-known' 'jwks.json')