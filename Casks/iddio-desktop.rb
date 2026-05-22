# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.522.1429"

  on_arm do
    sha256 "67f190018ca71503e7ec7b39d6aeddb03e5750938af59cf4089c7d8113ae2949"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0522.1429/iddio-desktop_v26.0522.1429_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "e7789795043bd15e61ecb25293f1a3a294635d284c46d11f913da563bc646c7b"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0522.1429/iddio-desktop_v26.0522.1429_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
