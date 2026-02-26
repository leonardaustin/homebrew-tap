# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0226.1148"

  on_arm do
    sha256 "0483612ca7181217796709161901a28fbbcf654f99f88525123ec68ce1cbe9bb"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0226.1148/iddio-desktop_2026.0226.1148_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "4262554b332c2050da702071d5fb9bb781ba5d689e9befea00aa5f5661c308f6"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0226.1148/iddio-desktop_2026.0226.1148_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
