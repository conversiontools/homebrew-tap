class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.3/ctio-darwin-arm64"
      sha256 "205651fe7b37d2b2b8c7ca1a8e44ad92de362b3902f19d3fa4aa8bccd5621e32"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.3/ctio-darwin-x64"
      sha256 "3f493ece35d4998ff0e3d607dc2a87ecf9fdf0f25a640cd33f6885dac0e6727c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.3/ctio-linux-x64"
      sha256 "bc6f2412e796d36c13443571e876d20742dcd541b15b35211a92e4d06f7a2508"
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
