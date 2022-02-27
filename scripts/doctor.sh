#!/usr/bin/env bash

GREEN="\x1B[32m"
ORANGE="\e[33m"
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
    echo -e "${RED}[!]${RESET} pokeget found, but is not in PATH. You need to add ${BOLD}export PATH=\"\$HOME/.local/bin:\$PATH\"${RESET} to your shells rc file."
  else
    echo -e "${RED}[!]${RESET} pokeget not found."
  fi
else
  echo -e "${GREEN}[!]${RESET} pokeget found!"
fi

rawOsRelease=$(cat /etc/os-release)

# TODO: make this horrible peice of code more readable

parsedOsRelease=$(echo "$rawOsRelease" | cut -d'"' -f 2 | sed -n "$(grep -n PRETTY_NAME /etc/os-release | cut -d : -f1)"p)

echo -e "${CYAN}[!]${RESET} Running $parsedOsRelease"