# typed: false
# frozen_string_literal: true

cask "iddio" do
  version "2.0.0"

  on_arm do
    sha256 "948aa86daad3318256956addb3f6a180f2ccd5eda45544d1ab347b4b21dcd5d6"
    url "https://github.com/leonardaustin/iddio/releases/download/v2.0.0/iddio-desktop_2.0.0_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "e8938ff77d30722506a188f432551597d5a800954e97d1547f5157a582fb5824"
    url "https://github.com/leonardaustin/iddio/releases/download/v2.0.0/iddio-desktop_2.0.0_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
