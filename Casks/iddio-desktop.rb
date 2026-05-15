# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.515.1520"

  on_arm do
    sha256 "e55fef735f9aafbcab97418b98598f19aab5a3c7435ca69a9e5a1c8e76695b28"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0515.1520/iddio-desktop_v26.0515.1520_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "20206fbc6abda80d0badaae91c388294e206c666a85b67c9bc6532142af0dc2c"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0515.1520/iddio-desktop_v26.0515.1520_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
