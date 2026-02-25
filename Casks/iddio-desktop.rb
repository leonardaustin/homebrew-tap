# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0225.1645"

  on_arm do
    sha256 "c8c12a28e8e8851d30fa5b41ddb6a21a4c0e5eae28b717aa33ff25166c1f57c9"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0225.1645/iddio-desktop_2026.0225.1645_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "5c0514477d8597df952eebeede1a90bd1e94a742130ea746a757cff6d69bcc46"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0225.1645/iddio-desktop_2026.0225.1645_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
