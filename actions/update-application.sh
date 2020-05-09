#!/bin/bash
CURRENT_DIR="$(dirname "$0")"
source "$CURRENT_DIR/functions.sh"
set -e

load-config

update-stack $APPLICATION_STACK_NAME "$CURRENT_DIR/../templates/udagram-application.yml" "$CURRENT_DIR/../templates/udagram-application-params.json"