# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0604.2243"

  on_arm do
    sha256 "e33f607a7ffbb95f2f7737e1ece4d3cadc4b0776275422fd51f61b3577bff62a"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-desktop_26.0604.2243_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "ec203859be7c208a66ccb4fcd648ecd7d29328bd6201b15061f118f7afa04811"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-desktop_26.0604.2243_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
