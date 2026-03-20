# typed: false
# frozen_string_literal: true

cask "clusterfudge" do
  version "2026.0320.1924"

  on_arm do
    sha256 "44fbf1dc558f84aaf82472acbc6d6a6cb35b06d0ada7c0e48015a6520a2c932a"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0320.1924/clusterfudge_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "62c034abad0830eeb30ec3578d4c9a728989efc57593c194c927cbe8f0582095"
    url "https://github.com/leonardaustin/clusterfudge/releases/download/v2026.0320.1924/clusterfudge_darwin_amd64.dmg"
  end

  name "Clusterfudge"
  desc "Kubernetes cluster management desktop app"
  homepage "https://github.com/leonardaustin/clusterfudge"

  app "Clusterfudge.app"

  zap trash: [
    "~/Library/Application Support/Clusterfudge",
  ]
end
