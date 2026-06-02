# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0602.1104"

  on_arm do
    sha256 "c75fd41edb04837e3f2e5ae3b7682b47cca50dddc4ce9d32086035c4028dcd8d"
    url "https://github.com/leonardaustin/iddio-mono/releases/download/v2026.0602.1104/iddio-desktop_2026.0602.1104_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "7f4a88c48153bb0a8e6a25b41396ee4e37451e748f5b6aa7fdad29fe1e410f82"
    url "https://github.com/leonardaustin/iddio-mono/releases/download/v2026.0602.1104/iddio-desktop_2026.0602.1104_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
