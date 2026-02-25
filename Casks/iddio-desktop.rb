# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0225.0711"

  on_arm do
    sha256 "3730456e99bfb3edbfbc64a93bb78762c361cc81d6eadda0632be1672ad34f65"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0225.0711/iddio-desktop_2026.0225.0711_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "23a54b516d9be28da066682ec454adeac0710f5f8bb0eb926396be71c4c34fe4"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0225.0711/iddio-desktop_2026.0225.0711_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
