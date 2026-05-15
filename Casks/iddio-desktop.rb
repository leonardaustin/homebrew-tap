# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0515.1025"

  on_arm do
    sha256 "f14cff0ca3b9b125a47f0d5d0f4f61b35d0e7075bd610c7bce116002226981a5"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0515.1025/iddio-desktop_2026.0515.1025_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "29b9423a4fd727c2d73a8761745a0576133fa107d166d5767507793bc4422640"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0515.1025/iddio-desktop_2026.0515.1025_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
