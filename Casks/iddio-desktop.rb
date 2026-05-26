# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.526.1344"

  on_arm do
    sha256 "17df19109aabffd167cd2e6c940b415654e64168387631830bc0402a977c9bdc"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.1344/iddio-desktop_v26.0526.1344_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "01cde98da07b34342813394b2d91bb45c5ed1d5f619726813ef3a0673238f328"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.1344/iddio-desktop_v26.0526.1344_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
