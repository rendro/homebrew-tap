class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "b626cf451c130e8369750c4ddcc9ef5f66ea6fceafbf146cc518e33b471817b2"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "95646543a3bee155fb9c077e4e4eab733f3ccbed6493b816cf862b454e7b81eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b699410473389e059889ebd6a0fcddadfbd7b173f88188aefe8641bfad3a02a"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
