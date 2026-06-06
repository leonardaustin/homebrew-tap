# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0606.0948"

  on_arm do
    sha256 "6de9473d84bd5cfbe5439748a125d31f16e86b137b93fa945a70b9d6b25a0a16"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-desktop_26.0606.0948_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "0fcbfddb9b856db8a009d74dc2ba2eab84d764e79f605ce6dd81e6b940d1640f"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-desktop_26.0606.0948_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
