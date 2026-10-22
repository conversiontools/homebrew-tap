class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.1/ctio-darwin-arm64"
      sha256 "be4d4b943283bd02a70f47db971a426ddf011c23fc021dce08dfaf31eaea4f6c"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.1/ctio-darwin-x64"
      sha256 "e83768758b116da7ca7381d6f01f17386c4797467dc76e8cb0885a39db31237f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.1/ctio-linux-x64"
      sha256 "68406188c2279e0d884c6a30ea9534cd0537228f1afecae93e29321a6800cc2a"
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
