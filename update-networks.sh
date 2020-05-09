#!/bin/bash

set -e

aws cloudformation update-stack                         \
    --stack-name udagram-test-1                         \
    --template-body file://udagram-network.yml          \
    --parameters file://udagram-network-params.json     \