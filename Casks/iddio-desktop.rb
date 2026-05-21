# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.521.1157"

  on_arm do
    sha256 "5ffb7cdc73afe29c1c6437603b92ab63bab4e15b306f77b5ec3169001caf3d49"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0521.1157/iddio-desktop_v26.0521.1157_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "577c5bd89df233cda5fc822b3b4ae01c8c27679b58d419a92dd56f687f45d8a8"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0521.1157/iddio-desktop_v26.0521.1157_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
