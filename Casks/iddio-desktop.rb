# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.0513.2019"

  on_arm do
    sha256 "c8e8bc549d9363bb3b24f3196277e16895a1b2cbe60ac78bd15c9555ae1b8418"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0513.2019/iddio-desktop_2026.0513.2019_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "cc696d07ebd481173a07eaae777af19bf57d30275ddad72ae38717e23ebfa4c7"
    url "https://github.com/leonardaustin/iddio/releases/download/desktop-v2026.0513.2019/iddio-desktop_2026.0513.2019_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
