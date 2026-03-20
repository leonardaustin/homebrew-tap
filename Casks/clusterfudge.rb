# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0320.2328"

  on_arm do
    sha256 "136b1da1be1c537e7b63cc5d13744da55c55f2c08bf2aea5dca6629c6f3f010b"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0320.2328/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "00568dc98fd66992314c956b8167e4ef7b6855b243a8069be5b46c2bfdee043c"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0320.2328/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
