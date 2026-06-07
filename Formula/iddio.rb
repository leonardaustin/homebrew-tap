# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0607.1316"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-cli-darwin-amd64.tar.gz"
      sha256 "ee610e09a7847a27bc205688cb4d140939eb25eff3d046f9be06ffa04eebd23d"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "2a2b74d9d6f9b3946dafd14723646b7de1ce0b00b352901b8040cca1155bce9b"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-cli-darwin-arm64.tar.gz"
      sha256 "7ce461fef417d8e4c109f40ee748e75205935841d9292fc3f55b5fbd16f7e52a"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "fbd02e5bfbb459c05d42d07051dfe2e6b2a942033292b0368ced90bffaf25c0f"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-cli-linux-amd64.tar.gz"
      sha256 "dd94dda6da6cbbfcd0f0fd3a5834f4af9b46cf03ee8223b6519fe134c2cb953f"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-daemon-linux-amd64.tar.gz"
        sha256 "470df439c38ce3adbb1d7ac490880b4b6e4ef2ea69e103cad4b79ba4e2ddafdd"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-cli-linux-arm64.tar.gz"
      sha256 "6da420162043b1a91c5acc227750107f9d7eb7a735d9db7bc6170ea690ca6ebe"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0607.1316/iddio-daemon-linux-arm64.tar.gz"
        sha256 "51d188994176ae366b1b394fc054c8432ad379730373510532a178aceec3c968"
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
