class Asposepdftool < Formula
  desc "Aspose.PDF CLI App"
  homepage "https://github.com/aspose-pdf/asposepdftool"
  version "25.10.0"
  license :cannot_represent # This tool is distributed under a custom license. See LICENSE.txt in the repository for details.

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_arm64.tar.bz2"
      sha256 "67120c3fd933e51b1330bf3f3916f2e2a764d051c68c76c96323c0d09181a1f8"
    else
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_x86_64.tar.bz2"
      sha256 "cbbd782becc2e072782c0bf2f71b357d2694efc094ade8e0c067c3bb169dffe5"
    end
  end

  def install
    bin.install "asposepdftool"
  end

  test do
    system "#{bin}/asposepdftool", "--version"
  end
end
