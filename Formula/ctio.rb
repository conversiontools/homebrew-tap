class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.9.1/ctio-darwin-arm64"
      sha256 "7dc6b0f297c48d9d2d367ad7165989240adf9255ca30ac5a666e1f05bef48fac"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.9.1/ctio-darwin-x64"
      sha256 "cf5c5ad6b6248bdbc96f8206199b673d5da42d4759a8f32850f20dedf18d13d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.9.1/ctio-linux-x64"
      sha256 "2f72f2b2fb68daa581b1e816eb322685d0cb7ad899e018bd764ad1307dc933f4"
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
