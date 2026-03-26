# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0326.1530"

  on_arm do
    sha256 "b6d57ab2d68b6cea65c50e911894a49c33ae09217511ea0ca87e4abc72e9dbca"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0326.1530/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "04314efff17efd7c5435c486ac200eb08546fe458298d7ab558205a3fd7b3a08"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0326.1530/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
