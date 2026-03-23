# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0323.2219"

  on_arm do
    sha256 "b00df67d6063b079c4c8916d7795a4e5f6e58b70a85b081ed8743b71ade76446"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0323.2219/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "ab24d08b7e1884daa296c73da0b5182481c2791408967155129cbf0cc60705a6"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0323.2219/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
