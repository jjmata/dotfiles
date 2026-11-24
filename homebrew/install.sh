#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Homebrew is a prerequisite. Do not download and execute a remote installer
# from this unattended maintenance script.
if ! command -v brew >/dev/null 2>&1
then
  echo "Homebrew is required. Install it from https://docs.brew.sh/Installation, review the installer, then rerun dot." >&2
  exit 1
fi

# Link keg-only formulas that we want in PATH
brew list | grep 'postgresql@' | xargs -I {} brew link {} --force 2>/dev/null

exit 0
