#!/bin/bash

set -e

aws cloudformation delete-stack     \
    --stack-name udagram-test-1

# wait until delete finishes
aws cloudformation wait stack-delete-complete --stack-name udagram-test-1