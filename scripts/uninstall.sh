#!/usr/bin/env bash

# Color variables

GREEN="\x1B[32m"
#CYAN="\x1B[36m"
ORANGE="\e[33m"
BOLD="\x1B[1m"
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
  echo -e "${ORANGE}[!]${RESET} Are you sure you want to remove pokeget?"
  yesOrNo
  if [ $? != 1 ]; then
    exit
  fi
}

echo -e "${GREEN}[!]${RESET} Uninstall script started successfully."
echo
if [[ $USER != "root" ]]; then
  echo -e "${ORANGE}[!]${RESET} Selecting ${BOLD}uninstallation${RESET} as ${BOLD}normal user${RESET}."
  areYouSure
  rm "$HOME/.local/bin/pokeget"
  rm -rf "$HOME/.config/pokeget"
else
  echo -e "${ORANGE}[!]${RESET} Selecting ${BOLD}system wide${RESET} ${BOLD}uninstallation${RESET}."
  areYouSure
  rm "/usr/bin/pokeget"
fi
echo -e "${GREEN}[!]${RESET} Pokeget has been successfully removed."