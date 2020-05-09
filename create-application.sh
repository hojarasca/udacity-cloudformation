#!/bin/bash

set -e

aws cloudformation create-stack                         \
    --stack-name udagram-test-1-application             \
    --template-body file://udagram-application.yml      \
    --parameters file://udagram-application-params.json \
    --capabilities CAPABILITY_NAMED_IAM                  \
    --capabilities CAPABILITY_NAMED_IAM

# wait until creation finishes
aws cloudformation wait stack-create-complete --stack-name udagram-test-1-application