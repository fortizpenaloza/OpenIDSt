issuing access token
accessTokenUsing: aHttpClient afterBeingRedirectedTo: aRedirectUri

	| accessToken response |

	accessToken := authorizationGrant
		accessTokenUsing: aHttpClient
		afterBeingRedirectedTo: aRedirectUri.

	response := aHttpClient
		url: userInfoEndpoint;
		headerAt: 'Authorization'
			put: ('Bearer <1s>' expandMacrosWith: accessToken accessToken);
		get;
		response.

	^ response isSuccess
		ifTrue: [ STONJSON fromString: response contents ]
		ifFalse: [ InvalidGrant new
				tag: response;
				signal ]