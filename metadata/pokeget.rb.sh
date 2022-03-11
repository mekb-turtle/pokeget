#!/usr/bin/env bash

echo "class Pokeget < Formula
  desc \"Bash script that displays cool sprites of pokemon in your terminal\"
  homepage \"https://github.com/talwat/pokeget\"
  url \"https://github.com/talwat/pokeget/releases/download/$VERSION/pokeget_$VERSION-src.tar\"
  sha256 \"[insert checksum]\"
  license \"MIT\"
  head \"https://github.com/talwat/pokeget.git\", branch: \"main\"

  on_macos do
    depends_on \"coreutils\"
  end

  def install
    system \"make\", \"install\", \"PREFIX=#{prefix}\"
  end

  test do
    system \"#{bin}/pokeget\", \"version\"
  end
end"