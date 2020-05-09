#!/bin/bash
set -e
CURRENT_DIR="$(dirname "$0")"
source "$CURRENT_DIR/deploy-network.sh"
source "$CURRENT_DIR/deploy-application.sh"