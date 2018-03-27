initialization
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'OpenIDSt' with: [ spec requires: #('OAuth2St') ];
				package: 'OpenIDSt-Tests' with: [ spec requires: #('OpenIDSt' 'TestHTTPClient') ].
				
			spec
				group: 'Deployment' with: #('OpenIDSt');
				group: 'Development' with: #('OpenIDSt-Tests');
				group: 'default' with: #('Development') ]