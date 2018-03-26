expected results
authorizationHtml

	 ^ '<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Sign In with Auth0</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

  <!--[if IE 8]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/ie8/0.2.5/ie8.js"></script>
  <![endif]-->

  <!--[if lte IE 9]>
  <script src="https://cdn.auth0.com/js/base64.js"></script>
  <script src="https://cdn.auth0.com/js/es5-shim.min.js"></script>
  <![endif]-->

  <script src="https://cdn.auth0.com/js/lock/11.3/lock.min.js"></script>
  <script>
    // Decode utf8 characters properly
    var config = JSON.parse(decodeURIComponent(escape(window.atob(''eyJhc3NldHNVcmwiOiIiLCJhdXRoMERvbWFpbiI6IndpbGxvdy1kZW1vLmF1dGgwLmNvbSIsImF1dGgwVGVuYW50Ijoid2lsbG93LWRlbW8iLCJjbGllbnRDb25maWd1cmF0aW9uQmFzZVVybCI6Imh0dHBzOi8vY2RuLmF1dGgwLmNvbS8iLCJjYWxsYmFja09uTG9jYXRpb25IYXNoIjpmYWxzZSwiY2FsbGJhY2tVUkwiOiJodHRwOi8vbG9jYWxob3N0OjgwODAvc2lnbi1pbiIsImNkbiI6Imh0dHBzOi8vc2RrLmF1dGgwLmNvbS8iLCJjbGllbnRJRCI6IjdRN2xBQTlYemt5TUdVaHFHYTlSQzNHY05mT2JYQ3FXIiwiZGljdCI6eyJzaWduaW4iOnsidGl0bGUiOiJXaWxsb3cgc2lnbiBpbiJ9fSwiZXh0cmFQYXJhbXMiOnsicHJvdG9jb2wiOiJvYXV0aDIiLCJyZXNwb25zZV90eXBlIjoiY29kZSIsInNjb3BlIjoib3BlbmlkIiwiX2NzcmYiOiJHbTVSZmUwQi1SaTRQMUxSV1YwemxTZ3h2MWlPYTBzdUhUMmMiLCJfaW50c3RhdGUiOiJkZXByZWNhdGVkIiwic3RhdGUiOiJ6T19vRFpkYllnM1RLdTBwVGJiZGZXb0VMZmVQMWh0WCJ9LCJpbnRlcm5hbE9wdGlvbnMiOnsicHJvdG9jb2wiOiJvYXV0aDIiLCJyZXNwb25zZV90eXBlIjoiY29kZSIsInNjb3BlIjoib3BlbmlkIiwiX2NzcmYiOiJHbTVSZmUwQi1SaTRQMUxSV1YwemxTZ3h2MWlPYTBzdUhUMmMiLCJfaW50c3RhdGUiOiJkZXByZWNhdGVkIiwic3RhdGUiOiJ6T19vRFpkYllnM1RLdTBwVGJiZGZXb0VMZmVQMWh0WCJ9LCJ3aWRnZXRVcmwiOiJodHRwczovL2Nkbi5hdXRoMC5jb20vdzIvYXV0aDAtd2lkZ2V0LTUuMS5taW4uanMiLCJpc1RoaXJkUGFydHlDbGllbnQiOmZhbHNlLCJhdXRob3JpemF0aW9uU2VydmVyIjp7InVybCI6Imh0dHBzOi8vd2lsbG93LWRlbW8uYXV0aDAuY29tIiwiaXNzdWVyIjoiaHR0cHM6Ly93aWxsb3ctZGVtby5hdXRoMC5jb20vIn19''))));
    config.extraParams = config.extraParams || {};
    var connection = config.connection;
    var prompt = config.prompt;
    var languageDictionary;
    var language;
    
    if (config.dict && config.dict.signin && config.dict.signin.title) {
      languageDictionary = { title: config.dict.signin.title };
    } else if (typeof config.dict === ''string'') {
      language = config.dict;
    }
    var loginHint = config.extraParams.login_hint;
    
    var lock = new Auth0Lock(config.clientID, config.auth0Domain, {
      auth: {
        redirectUrl: config.callbackURL,
        responseType: (config.internalOptions || {}).response_type ||
          (config.callbackOnLocationHash ? ''token'' : ''code''),
        params: config.internalOptions
      },
      assetsUrl:  config.assetsUrl,
      allowedConnections: connection ? [connection] : null,
      rememberLastLogin: !prompt,
      language: language,
      languageDictionary: languageDictionary,
      theme: {
        logo: ''https://raw.githubusercontent.com/ba-st/Willow/master/resources/logos/128x128.png'',
        //primaryColor:    ''green''
      },
      prefill: loginHint ? { email: loginHint, username: loginHint } : null,
      closable: false,
      // uncomment if you want small buttons for social providers
      // socialButtonStyle: ''small''
    });

    lock.show();
  </script>
</body>
</html>
'