#!/bin/bash

# Set environment variables that will be used by grunt.
# The idea here is to still conform to 12factor.net/config even though this is 
# a client side app and environment variables are not accessible. These
# values will be copied by grunt into the config.js 

export NODE_ENV=development

# Currently arena-web does not use an API backend. If we do end up 
# adding in calls from TC api we will need this value any setup where the 
# API is on different domain than where the client was served...
# export API_DOMAIN=www.example.com/api

export AUTH0_CONNECTION=LDAP
export AUTH0_DOMAIN=sma.auth0.com
export AUTH0_CLIENT_ID=CMaBuwSnY0Vu68PLrWatvvu3iIiGPh7t
export CALLBACK_URL=https://tc.cloud.topcoder.com/reg2/callback.action

# web socket server url
export WEB_SOCKET_URL=http://tc.cloud.topcoder.com:5037

# the cookie key of sso token
export SSO_KEY=tcsso_vm

# the HTTP server port
export PORT=3000

export STATIC_FILE_HOST="http://localhost:$PORT"

export AWS_ACCESS_KEY_ID=
export AWS_ACCESS_KEY=
export AWS_BUCKET=
export AWS_FOLDER='arena/md/web-v<%= pkg.version %>/'

NODE_ENV=UAT
AUTH0_DOMAIN=topcoder.auth0.com
AUTH0_CLIENT_ID=6ZwZEUo2ZK4c50aLPpgupeg5v2Ffxp9P
AUTH0_CONNECTION=LDAP
CALLBACK_URL=https://www.topcoder.com/reg2/callback.action
WEB_SOCKET_URL=https://arenaws.topcoder.com:443
SSO_KEY=tcsso
STATIC_FILE_HOST='http://localhost:3000'
AWS_ACCESS_KEY_ID=AKIAJWJA57TSTT34KAVA
AWS_ACCESS_KEY=j6U/nRPjPXGzarZRgyJjrx3Fk0ZNkopzvWlnxN9n
AWS_BUCKET=tc-content
AWS_FOLDER='arena/prod/web-v<%= pkg.version %>/'
