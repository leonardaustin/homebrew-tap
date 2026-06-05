# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0605.1532"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-cli-darwin-amd64.tar.gz"
      sha256 "725969e8072ea94f642668e820be17d6991a364073f4dab07399aa9cef12f7d2"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "ea378c94c8e340ac7a77750eb5ccd7064d8b02d0e03f4c27aac3f14936b69635"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-cli-darwin-arm64.tar.gz"
      sha256 "a5a8e21968f65b9a5e09a7d4515f90a6fdde3c75a4a2cce92a3db6521a56e2e4"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "b20c9cf70e48d1ecc6d09741f55c1f5f15d00e17b5d569d7ec6cda54f156680c"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-cli-linux-amd64.tar.gz"
      sha256 "0bec29293db3586bc56cedc29df5e9ff2a80e34e80732edf0b432c5f8a65b3d2"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-daemon-linux-amd64.tar.gz"
        sha256 "96fff2a3ba35c0f60b32b9a2626c8770d94bba1121c08749f889c894eae42e46"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-cli-linux-arm64.tar.gz"
      sha256 "e74b9f635e5eca679ab5299378a9c63e653fcfeba72d6d7ba686be899b09a025"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0605.1532/iddio-daemon-linux-arm64.tar.gz"
        sha256 "4544bed638bbc0488cc19d7fd09e233cac805fdd39e6ebefc1f238e58c40f40c"
      end
    end
  end

  def install
    bin.install "iddio"
    resource("iddio-daemon").stage { bin.install "iddio-daemon" }
  end

  test do
    assert_match "iddio-local", shell_output("#{bin}/iddio version 2>&1")
  end
end
