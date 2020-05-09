#!/bin/bash

set -e

aws cloudformation update-stack                         \
    --stack-name udagram-test-1-application             \
    --template-body file://udagram-application.yml      \
    --parameters file://udagram-application-params.json \
    --capabilities CAPABILITY_IAM                       \
    --capabilities CAPABILITY_NAMED_IAM

# wait until update finishes
aws cloudformation wait stack-update-complete --stack-name udagram-test-1-application