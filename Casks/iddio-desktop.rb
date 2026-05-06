# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0506.1759"

  on_arm do
    sha256 "700251f9905eaa5c1d0148c8cf5e86e3de4bc51372cf7b26a0724460e151676d"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0506.1759/iddio-desktop_2026.0506.1759_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "ebd18f604f560fda694138dd7dbc5c68ad44f416165e9c9f09cc1886d0b6c6ee"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0506.1759/iddio-desktop_2026.0506.1759_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
