# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0320.1344"

  on_arm do
    sha256 "0dd2fc9ff82c5704ad84606d59f475b83bd7c7daecced49fe48856c11b549547"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0320.1344/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "292d330af59f24242e90ff2a7863bf243d2a2cc38fe88c17cffa8d6715db583c"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0320.1344/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
