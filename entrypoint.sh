#!/bin/sh

set -e

if [[ -n "$RCLONE_CONF" ]]
then
  mkdir -p ~/.config/rclone
  echo "$RCLONE_CONF" > ~/.config/rclone/rclone.conf
fi

if [[ -n "$DEPLOY_KEY" ]]
then
  mkdir -p ~/.ssh
  echo "$DEPLOY_KEY" > ~/.ssh/id_rsa
  chmod 600 ~/.ssh/id_rsa
fi

sh -c "$*"
