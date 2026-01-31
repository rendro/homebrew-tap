class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "9962814040e5827e8bd802cff5fd21f49438ae42aaa93dc73639187643bc2830"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "bc3140905fa2f8e4fc369f8824c2db59e05833e9dab4f1c40f3bd8ecf6ac246d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbcacca397e4bf38d82de29e4623e56117c44532561323e3fff7e4ecbc9e6163"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
