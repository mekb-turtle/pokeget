#!/usr/bin/env bash

# Color variables

GREEN="\x1B[32m"
ORANGE="\e[33m"
RESET="\x1B[0m"

# Y or N function

yesOrNo() {
  read -r rawResponse

  response=$(echo "$rawResponse" | tr '[:upper:]' '[:lower:]')

  if [[ $response == "yes" || $response == "y" ]]; then
    return 1
  else
    return 0
  fi
}

areYouSure() {
  echo -e "${ORANGE}[!]${RESET} Are you sure you want to uninstall pokeget? [y/n]"
  yesOrNo
  if [ $? != 1 ]; then
    exit 1
  fi
}

echo -e "${GREEN}[!]${RESET} Uninstall script started successfully."
echo

areYouSure
echo -e "${ORANGE}[!]${RESET} Removing pokeget...."
if [[ $USER != "root" ]]; then
  if [ -f "$HOME/.local/bin/pokeget" ]; then
    rm "$HOME/.local/bin/pokeget"
    rm -rf "$HOME/.config/pokeget"
  fi
  if [ -f "/usr/bin/pokeget" ]; then
    sudo rm "usr/bin/pokeget"
  fi
else
  if [ -f "/usr/bin/pokeget" ]; then
    rm "/usr/bin/pokeget"
  fi
fi
echo -e "${GREEN}[!]${RESET} Pokeget has been successfully uninstalled."
exit 0