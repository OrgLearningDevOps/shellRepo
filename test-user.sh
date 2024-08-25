#!/bin/bash

API_URL="https://api.github.com"

USERNAME=$username
TOKEN=$token

REPO_ORG=$1
REPO_NAME=$2

function list_users {
	local endpoint="repos/${REPO_ORG}/${REPO_NAME}/collaborators"
	local url="${API_URL}/${endpoint}"	


	curl_command=`curl -s -u "${USERNAME}:${TOKEN}" "$url"`
      	
	curl_output="$curl_command"
	
	collaborators=$(echo "$curl_output" | jq -r '.[] | select(.permissions.pull == true) | .login')

	if [[ -z "$collaborators"  ]]; then
		echo "No users found for Org: ${REPO_ORG} and repo: ${REPO_NAME}"
	else
		echo "Users with read access to ${REPO_ORG}/${REPO_NAME}:"
		echo "$collaborators"
	
	fi
}

echo "Listing users with read access to ${REPO_ORG}/${REPO_NAME}:"

list_users


