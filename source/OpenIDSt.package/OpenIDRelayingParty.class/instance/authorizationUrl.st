as yet unclassified
authorizationUrl

	| authorizationCodeGrant |

	authorizationCodeGrant := AuthorizationCodeGrant on: oath2Client scopedTo: 'openid' returningTo: 'xyz'.

	^ authorizationCodeGrant authorizationUrl