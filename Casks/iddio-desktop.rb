# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0608.1325"

  on_arm do
    sha256 "a9c7da885616ac67647a56e3d386c5f490629fce126e48ace75d647efdd29d93"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-desktop_26.0608.1325_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "6aca41687b80c9db1a438915b3a67ddb0150efefa3345dd35a876b6690be526d"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-desktop_26.0608.1325_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
