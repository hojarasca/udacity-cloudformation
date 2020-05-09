#!/bin/bash
CURRENT_DIR="$(dirname "$0")"

source "$CURRENT_DIR/functions.sh"

set -e

deploy-stack udagram-test-1-application "$CURRENT_DIR/../templates/udagram-application.yml" "$CURRENT_DIR/../templates/udagram-application-params.json"