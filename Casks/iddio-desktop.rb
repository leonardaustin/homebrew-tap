# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.526.1759"

  on_arm do
    sha256 "0c7997da4f957a2210a453e113b0cb64f458f5e030ec05f55f3811a354034779"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.1759/iddio-desktop_v26.0526.1759_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "6d3eb96744f59895648faf4c211ae7cd2c8febc299662fce91d6fad5c8cb5bf5"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.1759/iddio-desktop_v26.0526.1759_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
