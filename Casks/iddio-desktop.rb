# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0513.2249"

  on_arm do
    sha256 "763fefb2a014b23b880b2668655020f871ccc3a030a3f98e40166d408b1db4ac"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0513.2249/iddio-desktop_2026.0513.2249_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "e1839f51a0e10db7f68ef41318ad81b3f5a2deccabb467b0b5428c9263630730"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0513.2249/iddio-desktop_2026.0513.2249_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
