# Lifelock Errbot
This repository will contain the necessary bundling and deployment for the lifelock errbot. The configurations inside of the config.py have been externalized to environment
variables to allow us to deploy using docker. The configuration here is intended for use with slack so there is a default set in config.py. You will just need to setup a 
'docker-compose.env' and place all your applicable environment variables there to set various settings to do development locally. You will need a slack token and at the
time of writing this we only have a production slack token for use. It may make sense to generate a secondary token to use for local development activities. 

* Note: The "Slack" backend appears to be case sensitive at time of writing this. You will have to set it to "Slack" not "SLACK".

## Important ENV Variables
Pass the following environment variables to the container during start up to complete configuration. This fills in the OS get ENV calls inside of the config.py.

| ENV VAR           | Setting                                                       |
| ---------         | ---------                                                     |
| ERR_BACKEND       | Sets the backend type (hard coded to slack right now)         |
| ERR_SLACK_TOKEN   | The token generated from the slack integration you setup      |
| ERR_ADMINS        | A command separated list of usernames to be admins.           |
| ERR_CHATROOMS     | A command separated list of channels to join on start  up.    |

## Development Environment Setup
Create a docker-compose.env and input the necessary environment variables. Ensuring to use a valid slack token. Here is an example:
```
ERR_BACKEND=Slack
ERR_SLACK_TOKEN=XXXXXXXXXXXX
ERR_ADMINS=joseph_campos
ERR_CHATROOMS=#errbot-test
```
Run the following:
```
docker-compose up
```
During the initial start up it should run a build of the errbot image. Once its built it will schedule the container to run locally within your docker daemon. If all
goes well you should see your bot show up in the userlist in slack.

## Deploying Changes
TODO: Add steps to trigger image management pipeline.
TODO: Add steps to deploy the new image via terraform.