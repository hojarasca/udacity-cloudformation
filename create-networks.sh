#!/bin/bash

set -e

aws cloudformation create-stack                         \
    --stack-name udagram-test-1                         \
    --template-body file://udagram-network.yml          \
    --parameters file://udagram-network-params.json

# wait until creation finishes
aws cloudformation wait stack-create-complete --stack-name udagram-test-1