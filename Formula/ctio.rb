class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.2/ctio-darwin-arm64"
      sha256 "3b2736eb4785a006a9e838a5b179143511b37d0332b69efae4ce42f5c8e3d838"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.2/ctio-darwin-x64"
      sha256 "e29ca781b3fbd919b56dffec5a3d0659ca76c5ad8a260f66c013d0bc143da82b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.2/ctio-linux-x64"
      sha256 "2d450f4f7c82f1d517c7c3af6c3153096f12a3c8c939b540fcabcd4ce40d6c92"
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
