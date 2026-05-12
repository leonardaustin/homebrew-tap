# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0512.1130"

  on_arm do
    sha256 "53b90b25e29f6d4cac5de294ab804d70962ff45244ab30298b5ccd0c38f765bf"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0512.1130/iddio-desktop_2026.0512.1130_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "76cfab2245cc4c3a9003ef6120c51483815881bd03220ce3f96960d4a775437a"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0512.1130/iddio-desktop_2026.0512.1130_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
