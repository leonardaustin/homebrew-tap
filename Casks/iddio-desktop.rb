# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0603.1115"

  on_arm do
    sha256 "0718ed8fc59327aa53fe8bd8276460dabd50009de468d9c3e11c78cf05750c92"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-desktop_26.0603.1115_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "f1bb93ad823a3bb41d78fed64677f337e6ca44d7f03f853ac3851c04dfc07b2c"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-desktop_26.0603.1115_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
