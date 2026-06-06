# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0606.0948"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-cli-darwin-amd64.tar.gz"
      sha256 "801a04087adb90d1a983475c45552a647e62569425290ff40bbc58789c623d7c"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "e3ffdbff8cf8c9ff9e52dc9ec513a51056da74b7071edc1e4e5ba8d7a5940539"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-cli-darwin-arm64.tar.gz"
      sha256 "6307fc29d73f107ded82ae100a544e93d20593cd25d9143e3aca9dd0cfe70e36"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "dbcc80ae451ee0a45866c591e29f2bdff180482155624eb5c7590d14120b9086"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-cli-linux-amd64.tar.gz"
      sha256 "7a5e6405bf91df66439ab09363a1e2e20bf4ded9dbcef593e7a591b1ff16709c"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-daemon-linux-amd64.tar.gz"
        sha256 "806a1f1e10b4cfb5cb26c31f60d3e40ae1c8ab0c9b04e432d2c578737de63a7f"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-cli-linux-arm64.tar.gz"
      sha256 "802c70cc14ba71a68abca15be0d658b4715f0863721cd78b95eac87242e7dd58"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0606.0948/iddio-daemon-linux-arm64.tar.gz"
        sha256 "1f891953983315da5ccd140315bc36ce231bd15b8f26c6e042ed953b0d9c2f51"
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
