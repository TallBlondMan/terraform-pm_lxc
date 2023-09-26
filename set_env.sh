#!/bin/bash

read -p "Please provide the token_id: " TOKEN_ID
read -p "Please provide the token_secrete: " TOKEN_SECRETE

export PM_API_TOKEN_ID=$OKEN_ID
export PM_API_TOKEN_SECRET=$TOKEN_SECRETE

terraform apply