# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0319.1034"

  on_arm do
    sha256 "64a4f0d4706804030f55ff1e21180f405cfc1c8885287e81d6f62bebfbba33ca"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1034/clusterfudge_2026.0319.1034_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "3c2662fbfab12d69ee7a8ca1d3475b052393854a41b04db4d7dfa47c4f70144b"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1034/clusterfudge_2026.0319.1034_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
