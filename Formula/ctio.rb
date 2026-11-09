class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.2/ctio-darwin-arm64"
      sha256 "49e2daa545dcefaf144bccb2d5199b15e6b8d5d84f6503458d53d631d4396b42"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.2/ctio-darwin-x64"
      sha256 "2716a14eb1ce43306bd96102300e8283905f29171a11c66bb919320b4d5e09c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.2/ctio-linux-x64"
      sha256 "7bfde87156fe1eaf69d5a6c6a82ae8f4e6c64feff673798a2a1b053d6a2b9009"
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
