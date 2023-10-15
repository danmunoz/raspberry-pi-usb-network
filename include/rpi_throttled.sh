#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

get_throttled() {
  echo "$(vcgencmd get_throttled | sed 's/throttled=//')"
}

main() {
  # storing the refresh rate in the variable RATE, default is 5
  RATE=$(get_tmux_option "@dracula-refresh-rate" 5)
  echo "Throttled $(get_throttled)"
  sleep $RATE
}

# run main driver
main
