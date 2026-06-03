# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "26.0602.2219"

  on_arm do
    sha256 "c4999109989b88f504b7c61663b251abefd85f96ce4498bb6d47b8c3d3288374"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-desktop_26.0602.2219_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "34cffa1254b9d693f5eada085d536f172c6511b2cd936547d5ccf44435e5c959"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-desktop_26.0602.2219_darwin_amd64.dmg"
  end

  name "Iddio Desktop"
  desc "Security gateway desktop client for Kubernetes clusters"
  homepage "https://iddio.dev"

  app "Iddio Desktop.app"

  zap trash: [
    "~/.iddio/desktop",
  ]
end
