# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0602.2219"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-cli-darwin-amd64.tar.gz"
      sha256 "ac3b0f932f81e82d6edcf5d1fb31249d65dabc2b42153deff9d0b43dfded240a"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "f1e04b34cf01ff2abab2882ff38c1190c4615041dae66f558c008b2ffb2d19c7"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-cli-darwin-arm64.tar.gz"
      sha256 "d4216acb21b477cbba6da805e3dbfce0fc9554bf5763e186b1d8131f254a8be7"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "b74c71685e810f9b1554c4cd949e8b860c0c95e800ae4436e9bb976e67c1d2d4"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-cli-linux-amd64.tar.gz"
      sha256 "c7ab988fe7cbb08d32cb349f0eb182304d1f803c60e1b26e40a496255e99ca70"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-daemon-linux-amd64.tar.gz"
        sha256 "8340d5d28a160bac4daca4502bb033e4943af9cf63b2e119102be860ad76c78f"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-cli-linux-arm64.tar.gz"
      sha256 "4efb75f89bc2e31f1fc4a796d15d760fabcec673f98a18b48f4f9db628caf952"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0602.2219/iddio-daemon-linux-arm64.tar.gz"
        sha256 "13519bf99276ceb7de70d18163c135793fdde0f273364cd0208490a8785f1b3f"
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
