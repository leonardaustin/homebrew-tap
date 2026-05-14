# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0514.1542"

  on_arm do
    sha256 "76f9f999fdfe14f433315b92b5d54fb97e2df6f42dd5d9486a421723a0625eee"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0514.1542/iddio-desktop_2026.0514.1542_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "f1a3986018be1affc5e29808b07b8f4a8ab13866b44ca53fa41f1bfd45df60c1"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0514.1542/iddio-desktop_2026.0514.1542_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
