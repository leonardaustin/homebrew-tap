# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0604.2243"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-cli-darwin-amd64.tar.gz"
      sha256 "513b52d011494ab273f490b4900d5a0126738e80a706ca38952cf9a51b328277"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "ebe14d0a80c29aa8a2647aa70767ce96b5ba0d9f42c9be4afc0f76769487a3c8"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-cli-darwin-arm64.tar.gz"
      sha256 "cd8b04aeff7ababbcb25eae1a309a5ce32b95fc1f9889bd048d744702de3abbe"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "534f11fdec40e31e406251782f0b1a56d5cb3e6b4e3f9897af1e1d1dd5274e0a"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-cli-linux-amd64.tar.gz"
      sha256 "618101625c458b3f8ddafdbda0ce3b388723dabebbc913598061e779e315d071"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-daemon-linux-amd64.tar.gz"
        sha256 "80fce0cbf02e9663c5d67352b87b32e48eeb3083042d0af1bc9534fd8df62500"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-cli-linux-arm64.tar.gz"
      sha256 "6f1311a1b442c9ab4bec2e78f6b0206055bb57830b660c8d5eb8af0ed1bab4ba"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0604.2243/iddio-daemon-linux-arm64.tar.gz"
        sha256 "11dda3a6e9ce67bad18c12a88253a8c3823daba852775d8df7b27c8c6b011fb0"
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
