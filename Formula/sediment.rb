class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.5.1"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "671ab7051ace842e0fd386683236f0365e7fe3e83f9e0bda7f2cb0427de8b600"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "98fc5f400acbbcf90c266c3150471882d39f9cda353cc5d7f4773a9d67cc23f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21aeb40b9549b20b0e1439d53ef37d4ee038ef244836b89750601818e0ca8502"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
