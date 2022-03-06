#!/usr/bin/env bash

# shellcheck source=/dev/null

GREEN="\x1B[32m"
#ORANGE="\e[33m"
RED="\x1B[31m"
CYAN="\x1B[36m"
BOLD="\x1B[1m"
RESET="\x1B[0m"

echo -e "${CYAN}[!]${RESET} Doctor script started."
echo -e "${CYAN}[!]${RESET} Starting to test..."

check_cmd() {
  if ! command -v "$1" &> /dev/null; then
    return 0
  else
    return 1
  fi
}


if check_cmd curl; then
  echo -e "${RED}[!]${RESET} cURL not found."
else
  echo -e "${GREEN}[!]${RESET} cURL found!"
fi

if check_cmd pokeget; then
  if [ -f "$HOME/.local/bin/pokeget" ]; then
    echo -e "${RED}[!]${RESET} pokeget found, but not in PATH. You need to add ${BOLD}export PATH=\"\$HOME/.local/bin:\$PATH\"${RESET} to your shells rc file."
  else
    echo -e "${RED}[!]${RESET} pokeget not found."
  fi
else
  echo -e "${GREEN}[!]${RESET} pokeget found!"
fi

source /etc/os-release

echo -e "${CYAN}[!]${RESET} Running $PRETTY_NAME"
echo -e "${CYAN}[!]${RESET} Shells [
$(cat /etc/shells)"
echo -e "]"
exit 0