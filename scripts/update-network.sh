#!/bin/bash
CURRENT_DIR="$(dirname "$0")"
source "$CURRENT_DIR/functions.sh"
set -e

load-config

update-stack $NETWORK_STACK_NAME "$CURRENT_DIR/../templates/udagram-network.yml" "$CURRENT_DIR/../templates/udagram-network-params.json"