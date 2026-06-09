# typed: false
# frozen_string_literal: true

cask "iddio" do
  version "2.0.1"

  on_arm do
    sha256 "2bc20613c0efa69cd577cbba99258a1b98b4794907b4a700110352abfc54d4df"
    url "https://github.com/leonardaustin/iddio/releases/download/v2.0.1/iddio-desktop_2.0.1_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "04f0ae79665e0503e7d231477bfc7de851a8855b0e908897356c97aa51cb21ec"
    url "https://github.com/leonardaustin/iddio/releases/download/v2.0.1/iddio-desktop_2.0.1_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
