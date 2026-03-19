# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0319.1825"

  on_arm do
    sha256 "861397670cf075542469597f373b972f73fb366be5e32a7d9dac8767d96f50ba"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1825/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "06c15e6edf6898f744427f5491d6136668ea47ce691643fe7e7b8abbde6cecd9"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0319.1825/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
