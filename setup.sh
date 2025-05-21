#!/usr/bin/env bash

# Wrapper for calling centralized common_scripts/set-env.sh
# Supports either tfvars or environment variables

TFVARS_FILE="$1"
COMMON_SCRIPT_PATH="../common_scripts/set-env.sh"

if [[ ! -f "$COMMON_SCRIPT_PATH" ]]; then
  echo "❌ Error: Could not find shared set-env.sh at $COMMON_SCRIPT_PATH"
  return 1
fi

if [[ -n "$TFVARS_FILE" ]]; then
  echo "📦 Using tfvars file: $TFVARS_FILE"
  source "$COMMON_SCRIPT_PATH" "$TFVARS_FILE"
else
  echo "⚙️ No tfvars file provided. Using environment variables instead."
  source "$COMMON_SCRIPT_PATH"
fi