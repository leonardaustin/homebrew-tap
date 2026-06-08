# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0608.1157"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-cli-darwin-amd64.tar.gz"
      sha256 "84d26286ab5ad31eba587e8ab7ca7865ee40276a0f7c69ed86b9e15d80a18379"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "6d000a8fe7f6e344e5c715f2242ab8db90cec27e0db4c00f77f3fc4af8d2a81e"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-cli-darwin-arm64.tar.gz"
      sha256 "210593e9e543dfef7e274fc9bbb3f62399b94294faead8da5def7224194ba3a1"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "15ae95fd8ce03d2f9a377daa90668a774e5bc6cbb7ab4e79ac3db57ae1bb3952"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-cli-linux-amd64.tar.gz"
      sha256 "e0647fc5d927bdd220d2bb1018afc2870d7eea7406e80d20278bc5971f56e150"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-daemon-linux-amd64.tar.gz"
        sha256 "f06cfaf4ab1ae8cecdca47d6078fe0cd28ae895657b677ec8365d5497cf5ed11"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-cli-linux-arm64.tar.gz"
      sha256 "c219d7ec6f949ff5f9f3adbb9d358cdd6ceb0fc3ac1c40b32f492fd7ee263af8"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0608.1157/iddio-daemon-linux-arm64.tar.gz"
        sha256 "bc3abb857521d493cfcd648ba0f918754331c5bede1f16e154062dbf497f12ad"
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
