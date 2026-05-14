# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0514.0746"

  on_arm do
    sha256 "363fad679781e6227821cd73f1c0476474bec20fd18277dcf33a3be77a4e8fdb"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0514.0746/iddio-desktop_2026.0514.0746_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "da4414a7a0ef91bdddfd3dc7cf64b1ae5078bfeddd993c083109226299928a69"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0514.0746/iddio-desktop_2026.0514.0746_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
