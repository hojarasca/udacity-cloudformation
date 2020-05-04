#!/bin/bash

aws cloudformation create-stack                         \
    --stack-name udagram-test-1                         \
    --template-body file://udagram-network.yml          \
    --parameters file://udagram-network-params.json     \