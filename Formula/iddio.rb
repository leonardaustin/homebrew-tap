# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway proxy for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0602.2219"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio-mono/releases/download/v26.0602.2219/iddio-cli-darwin-amd64.tar.gz"
      sha256 "ac3b0f932f81e82d6edcf5d1fb31249d65dabc2b42153deff9d0b43dfded240a"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio-mono/releases/download/v26.0602.2219/iddio-cli-darwin-arm64.tar.gz"
      sha256 "d4216acb21b477cbba6da805e3dbfce0fc9554bf5763e186b1d8131f254a8be7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio-mono/releases/download/v26.0602.2219/iddio-cli-linux-amd64.tar.gz"
      sha256 "c7ab988fe7cbb08d32cb349f0eb182304d1f803c60e1b26e40a496255e99ca70"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio-mono/releases/download/v26.0602.2219/iddio-cli-linux-arm64.tar.gz"
      sha256 "4efb75f89bc2e31f1fc4a796d15d760fabcec673f98a18b48f4f9db628caf952"
    end
  end

  def install
    bin.install "iddio"
  end
end
