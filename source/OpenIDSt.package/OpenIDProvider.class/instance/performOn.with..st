as yet unclassified
performOn: aHTTPClient with: aRedirectUri

	| token accessToken response |

	token := authorizationGrant performOn: aHTTPClient with: aRedirectUri.

	accessToken := token at: #access_token.

	response := aHTTPClient
		url: userInfoEndpoint;
		headerAt: 'Authorization' put: ('Bearer <1s>' expandMacrosWith: accessToken);
		get;
		response.

	^ response isSuccess
		ifTrue: [ STONJSON fromString: response contents ]
		ifFalse: [ InvalidGrant new
				tag: response;
				signal ]