# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0514.2218"

  on_arm do
    sha256 "92acced83ad7008f3d64c4f754b8f4b10e5aca7ffa46622c2c8be661f8abfa37"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0514.2218/iddio-desktop_2026.0514.2218_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "ff194cf2cfcd7a180dad91f22e861bae0fce7da15fdb40f647d5e3449790e674"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0514.2218/iddio-desktop_2026.0514.2218_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
