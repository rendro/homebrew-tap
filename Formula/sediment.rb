class Sediment < Formula
  desc "Semantic memory for AI agents - local-first, MCP-native"
  homepage "https://github.com/rendro/sediment"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-apple-darwin.tar.gz"
      sha256 "85dc243559ad6fbb48d3a77026e3424fcd9d05727d452b71a841a01e50f08213"
    end
    on_arm do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-aarch64-apple-darwin.tar.gz"
      sha256 "64ba23db243e06347de121877dcba9125f5eeb181c602e26377f8aff8eecea5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rendro/sediment/releases/download/v#{version}/sediment-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a06887637b4480c893614dcf8b2fa5526b9bcc1cc844ce1d7788ab7775770bb"
    end
  end

  def install
    bin.install "sediment"
  end

  test do
    assert_match "sediment", shell_output("#{bin}/sediment --help")
  end
end
