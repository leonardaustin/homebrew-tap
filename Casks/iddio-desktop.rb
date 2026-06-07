# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0607.1316"

  on_arm do
    sha256 "395994a96d3b9db2f20a02e6b5b32872dbf55c41316aa0bd5eff21c134a0562f"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-desktop_26.0607.1316_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "350e9ffbc11befed1a6fc0f8a7f9f3f4e4fe8ba30d343f2008bf0f9e164d7797"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-desktop_26.0607.1316_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
