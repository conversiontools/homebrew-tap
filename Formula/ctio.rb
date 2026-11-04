class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.6.0/ctio-darwin-arm64"
      sha256 "a40e2ca2c3935388e1c6d321af061c2137fe14cff1a40b6db43b56e662568bac"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.6.0/ctio-darwin-x64"
      sha256 "d636f94031dd2079aace991c0ff743572d612ace76a9d5cfc381557766e5d8ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.6.0/ctio-linux-x64"
      sha256 "cd6c09889f5069afa5cc0e10f3693435268139a024a98c59026d893d199970f7"
    end
  end

  def install
    binary = Dir["ctio-*"].first
    chmod 0755, binary
    bin.install binary => "ctio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ctio --version")
  end
end
