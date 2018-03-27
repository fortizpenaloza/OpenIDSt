initialization
setUpDependencies: spec

	spec
		baseline: 'OAuth2St'
		with: [ spec
				repository: 'github://fortizpenaloza/OAuth2St:master/source';
				loads: #('Deployment') ].

	spec
		baseline: 'TestHTTPClient'
		with: [ spec
				repository: 'github://fortizpenaloza/Test-HTTP-Client:master/source';
				loads: #('Development') ]