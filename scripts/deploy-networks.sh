#!/bin/bash
CURRENT_DIR="$(dirname "$0")"

source "$CURRENT_DIR/functions.sh"

set -e

deploy-stack udagram-test-1 "$CURRENT_DIR/../templates/udagram-network.yml" "$CURRENT_DIR/../templates/udagram-network-params.json"