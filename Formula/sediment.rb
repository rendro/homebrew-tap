class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "0fd93e1586dbda6a2bb8be1d43993159f0b858f45d0cd8a6f8db41f417240a8d"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "17d02e709f632d2ee05c2d89b038f29b0abd9e1460e0be2ec4f9233a03b8d168"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b7876b7eb351442a549c71e3b1c7a772a71ae36c8357591b0295ac422aca45d"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
