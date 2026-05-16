# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.516.714"

  on_arm do
    sha256 "d9e6ed2b6d903ddf36843df7434e00a194139ad98ffd23be21797756a547965a"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0516.0714/iddio-desktop_v26.0516.0714_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "63b3a63ecec264bbefdd2dcf2198c2642ee30a5daeda4b79e4eec2f9155eb405"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0516.0714/iddio-desktop_v26.0516.0714_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
