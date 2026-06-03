# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0603.1148"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-cli-darwin-amd64.tar.gz"
      sha256 "0469b301a0840ca6e44922eda7844d042389cd1c12aabef2aca8007d425d55ac"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "64990f69ca68079e536a002d30b92c5b947cdf7d6e4f39708498a25773353564"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-cli-darwin-arm64.tar.gz"
      sha256 "71a300d64767151a7dd2887f0aff8c734aaa782332cac3f31384ecd621328f2e"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "e241639c8f582f69ceaa843fb6b26359ead26e79df472173aee999acee411b1b"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-cli-linux-amd64.tar.gz"
      sha256 "f80204b331380aa90f4f44d8ad36970384f85845f4e07037db18e7640ad67c76"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-daemon-linux-amd64.tar.gz"
        sha256 "2ac3101c654ad23ef799821078c2ab0bd4f7f57f22557db1721d75e4fe71b0a9"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-cli-linux-arm64.tar.gz"
      sha256 "ab8cf15683656bb45c737e24cf4cf9f20374900756901c683a55e86a0232aa56"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1148/iddio-daemon-linux-arm64.tar.gz"
        sha256 "2cab952959e1ba6da4d51ab4188403e2ead768098624aa158d4d7160899c0232"
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
