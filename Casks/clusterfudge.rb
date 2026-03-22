# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0322.2300"

  on_arm do
    sha256 "0cd07dfc61c582d08fd56b6155e4c7933f8f4bbf4d3e8af2fb1442a6007afb91"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0322.2300/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "c384cf9a9dbcc9e805c79bb02b1bfb8f945451bf9db87c5ab7ebaad5875e4768"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0322.2300/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
