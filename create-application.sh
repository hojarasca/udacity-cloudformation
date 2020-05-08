#!/bin/bash

aws cloudformation create-stack                         \
    --stack-name udagram-test-1-application             \
    --template-body file://udagram-application.yml      \
    --parameters file://udagram-application-params.json