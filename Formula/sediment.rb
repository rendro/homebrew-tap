class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "b8ebe01adc1145a6edd9a978dde0b91d1dd3ca7d7e8b555fe9b4d456495b8756"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "2325e69f66e29ac6548945221d81071e996ef790097190663ab7d4b7bde0931e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b8ef58fec979ef8fab30d0555529e67c363e060caa14a027ab8a9b1215d21c7"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
