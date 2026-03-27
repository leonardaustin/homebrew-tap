# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0327.1557"

  on_arm do
    sha256 "8c25bf8c688f1af3fa2d90e438ccb11f2beb10417a470ef86783ad79dac22a10"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0327.1557/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "34d71a76dc105e3fd4e5c4854cce1c82515c32933eba39d17dc7f67e13ef9ee5"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0327.1557/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  postflight do
    system_command "/usr/bin/mdimport", args: ["#{appdir}/Clusterfudge.app"]
  end

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
