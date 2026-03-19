# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0319.1610"

  on_arm do
    sha256 "31ec8a262ce6c93a50c933b1b1b3d87510799c45e126c608e7e78329d2b02e3e"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1610/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "9b9469834caa6a0defe4f9e62dce69b62372122fc05df31633d49ccc9e3ebf32"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1610/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
