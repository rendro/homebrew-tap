class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.2.4"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "dde12ce7fbba64b8d4c2e9e83951368cf07dc371c690762cdf5c86b9239fe2e1"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "c2f84b779f4da5bb7ade4da7f78b9f602801eb4dfdbc4990db53dd579445d14e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a501c597054b3e8e035bf2e48ff540485376b6b8da8cf0f80732f3940c6cf22d"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
