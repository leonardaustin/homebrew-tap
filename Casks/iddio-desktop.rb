# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.517.848"

  on_arm do
    sha256 "a93b51b504bf4f331024c8e479dd3bfc886ff86fc530d2b512a0fb53edab1b2d"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0517.0848/iddio-desktop_v26.0517.0848_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "a95d7b15b358f3af2156a2c0d660f24ba73199c7839a20e56fe874df10b23b70"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0517.0848/iddio-desktop_v26.0517.0848_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
