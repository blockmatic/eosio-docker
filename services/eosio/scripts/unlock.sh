#!/usr/bin/env bash

# Throws error when using unset variable
set -ux

# Unlocks the default wallet and waits .5 seconds
function unlock_wallet () {
  echo "Unlocking default wallet..."
  cleos wallet unlock --password $(cat $CONFIG_DIR/wallet/default_password.txt)
  sleep .5
}

unlock_wallet
