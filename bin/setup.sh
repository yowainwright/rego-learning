#!/bin/sh

# Check to see if Homebrew, OPA, and Pre-commit are installed, and install it if it is not
HAS_BREW=$(command -v brew >/dev/null)
HAS_OPA=$(command -v opa >/dev/null)
HAS_PRECOMMIT=$(command -v pre-commit >/dev/null)

if $HAS_BREW; then
  echo >&2 "Homebrew is already installed"
else
  echo >&2 "Installing Homebrew Now"; \
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
fi

if $HAS_OPA; then
  echo >&2 "OPA is already installed"
else
  echo >&2 "Installing OPA Now"; \
  brew install opa
fi

if $HAS_PRECOMMIT; then
  echo >&2 "Pre-commit is already installed"
else
  echo >&2 "Installing Pre-commit Now"; \
  brew install pre-commit
fi

pre-commit install
