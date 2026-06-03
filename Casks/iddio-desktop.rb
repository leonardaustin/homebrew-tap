# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0603.1148"

  on_arm do
    sha256 "dfe1a4342df24dc7c5ec21ab630804bd574e6037e530338e3e7a857ae754e19d"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-desktop_26.0603.1148_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "fdc88bd4998a7b1d119544be5ad041e3452c2986099afa5779ddc3e2fa5088b5"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-desktop_26.0603.1148_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
