#!/bin/bash

aws cloudformation update-stack                         \
    --stack-name udagram-test-1-application             \
    --template-body file://udagram-application.yml      \
    --parameters file://udagram-application-params.json