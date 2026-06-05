# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0605.1532"

  on_arm do
    sha256 "973c223ae7b33ffe77d7ad3f56b83feb6b1806d745423ec09e53754ca55280ee"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-desktop_26.0605.1532_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "2d004943f8a5ac48b6cd538c753f5b66533ed5a06169ad5c2b119f5cc02e11b9"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-desktop_26.0605.1532_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
