# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0608.1157"

  on_arm do
    sha256 "76f4d9cc6162dc68b01b4d85883b04d929f2833e0829a6955d0fb67d3dee5c77"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-desktop_26.0608.1157_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "5cd3ab248460c45b284779fc9b3e0d5a1ad6bbf61db246c7781693c90f762b68"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-desktop_26.0608.1157_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
