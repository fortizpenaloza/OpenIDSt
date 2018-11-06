as yet unclassified
issueAccessTokenUsing: aHttpClient afterBeingRedirectedTo: aRedirectUri

	^ (AuthorizationCodeGrant on: oath2Client scopedTo: 'openid' returningTo: 'xyz')
		issueAccessTokenUsing: aHttpClient
		afterBeingRedirectedTo: aRedirectUri