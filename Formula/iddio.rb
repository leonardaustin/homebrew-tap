# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0608.1325"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-cli-darwin-amd64.tar.gz"
      sha256 "562710a8d7efb9682e97582063950126570569f9251296a81b981d81cbd5d7fe"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "f68fca8cf3edfc8c0be2c8b3d82ce367d0fee7f46e75427115894c028074cfa7"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-cli-darwin-arm64.tar.gz"
      sha256 "51decf1deb58a5f7ae34a68cf3f5fdb72bb279945a221874510e1652d978a36c"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "3a2d07d84fb493f04642412a99e565db1cd7e4861b9dc9ba47809d75a782d006"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-cli-linux-amd64.tar.gz"
      sha256 "7fb5e2ed232b5ec7768af71ad6fdf3192bd9027826926a4608d5cda9b2b461b7"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-daemon-linux-amd64.tar.gz"
        sha256 "c4fc93c4fc72bf1625b139eb7e0a2a335218bdf758c91d956e2e8261cd227074"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-cli-linux-arm64.tar.gz"
      sha256 "6268a70782c5665e35058013dad3e1389b96efd7dd5bc56248ce831209f95145"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1325/iddio-daemon-linux-arm64.tar.gz"
        sha256 "a8069b60276366deb5607cb83d02c76c7f573606b3c7619e033cb0132bfecedc"
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
