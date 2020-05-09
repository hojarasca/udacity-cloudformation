#!/bin/bash
set -e
CURRENT_DIR="$(dirname "$0")"

zip /tmp/site.zip $CURRENT_DIR/../site/* -r
aws s3 cp /tmp/site.zip s3://udagram-test-hojarasca/site.zip