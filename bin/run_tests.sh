#!/usr/bin/env bash

HAS_OPA=$(command -v opa >/dev/null)

if $HAS_OPA; then
  opa test ./rest_detailed -v
else
  echo >&2 "Try running the setup script before moving forward."; \
fi
