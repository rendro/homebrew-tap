class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.4.4"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "134ffe04a42feb97e573605cc476408c9ffef9f5004a3a1f5ea613f74ac335fc"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "f482044dfd96cc1ba179cf6ba75d4a0fc48e12d8faae2ddd732fe1383c78c1fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3850fdf1c826b795d9e8e1ec8c6b068624c7bcc0f02f2d25439a63ce8d87aa5a"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
