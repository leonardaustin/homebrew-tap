# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.526.1623"

  on_arm do
    sha256 "7155886edcc7226d0503ab672b2d3d104bc66155a73c0f3313c4481ce405bc3d"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.1623/iddio-desktop_v26.0526.1623_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "898bc802ba7ca190cff413d6459e122230d06f79a5abaa63126af15989a5efad"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.1623/iddio-desktop_v26.0526.1623_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
