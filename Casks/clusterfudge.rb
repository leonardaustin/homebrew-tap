# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0319.1034"

  on_arm do
    sha256 "61ff02f0da74f130336229a6391e0bd91a2b9e472cb9b38b6afe228c0d800ffe"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1034/clusterfudge_2026.0319.1034_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "eb071cb51f3da9444e9eec3c1792be873b6fc85b43425b282cd049bc8bbf5fe7"
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
