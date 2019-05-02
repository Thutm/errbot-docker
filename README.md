# errbot-docker
This is used as a generic errbot image to do some development. Since its a public repo no real server configuration will be set in config.py and use ENV variables instead. The configuration here is intended for use with slack right now
so there is a default set in config.py. You will just need to setup a 'docker-compose.env' and place all your applicable environment variables there to set various settings. 

* Note: The "Slack" backend appears to be case sensitive at time of writing this. You will have to set it to "Slack" not "SLACK".

# Important ENV Variables
Pass the following environment variables to the container during start up to complete configuration. This fills in the OS get ENV calls inside of the config.py.

| ENV VAR           | Setting                                                       |
| ---------         | ---------                                                     |
| ERR_BACKEND       | Sets the backend type (hard coded to slack right now)         |
| ERR_SLACK_TOKEN   | The token generated from the slack integration you setup      |
| ERR_ADMINS        | A command separated list of usernames to be admins.           |
| ERR_CHATROOMS     | A command separated list of channels to join on start  up.    |
