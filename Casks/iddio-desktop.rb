# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.05.26.2115"

  on_arm do
    sha256 "34917908fc63b73e0881ab6d4c087588fa136ed442c3b94a361f40808a146f36"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.2115/iddio-desktop_v26.0526.2115_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "cbfde853904868db388ec050173a5ca8d1f37c90fac64465b79f92ebe6f5a547"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0526.2115/iddio-desktop_v26.0526.2115_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
