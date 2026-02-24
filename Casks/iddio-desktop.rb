# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0224.2331"

  on_arm do
    sha256 "284f1b026a13f71c415c98dd3bf1ae54810d5873ca788a2ce81e97b3733dfeec"
    url "https://github.com/leonardaustin/iddio-mono/releases/download/desktop-v2026.0224.2331/iddio-desktop_2026.0224.2331_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "f4a76cd433fdcf016ff65f3faa1770ddfe3781c0fcbbf40539b31b84561867c6"
    url "https://github.com/leonardaustin/iddio-mono/releases/download/desktop-v2026.0224.2331/iddio-desktop_2026.0224.2331_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
