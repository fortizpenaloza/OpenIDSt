tests
testInstanceCreation

	| aOAuth2AuthorizationServer openIDProvider client authorizationUrl response httpClient token |

	aOAuth2AuthorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint.

	client := OAuth2Client
		registeredOn: aOAuth2AuthorizationServer
		as: '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'
		sharing: 'fcZy-KVJvbT5DFEFfD8KEjLrPgu5dSDyJbAP7Z4gzBHRvFEqs3O_oq11kv7n3sH6'
		redirectingTo: 'http://localhost:8080/sign-in' asZnUrl.

	openIDProvider := OpenIDProvider
		providingUserInfoAt: self userInfoEndpoint
		signingKeySetAt: self jwksEndpoint
		using: client.

	authorizationUrl := openIDProvider authorizationUrl.
	self
		assertCollection: authorizationUrl query
		hasSameElements:
			(ZnMultiValueDictionary new
				at: 'redirect_uri' add: 'http://localhost:8080/sign-in';
				at: 'client_id' add: '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW';
				at: 'response_type' add: 'code';
				at: 'scope' add: 'openid';
				at: 'state' add: 'xyz';
				yourself).

	response := ZnClient new
		get: authorizationUrl;
		response.

	self
		assert: response code equals: 200;
		assert: response contents equals: self authorizationHtml.

	httpClient := ZnClient new beOneShot.

	token := openIDProvider
		performOn: httpClient
		with:
			'http://localhost:8080/sign-in?code=AUTHORIZATION_CODE&state=STATE'
				asZnUrl.

	self
		assert: (token at: #access_token)
			equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: (token at: #token_type) equals: 'Bearer';
		assert: (token at: #expires_in) equals: 86400