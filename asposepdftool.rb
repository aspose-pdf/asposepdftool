class Asposepdftool < Formula
  desc "Aspose.PDF CLI App"
  homepage "https://github.com/aspose-pdf/asposepdftool"
  version "25.3.0"
  license :cannot_represent # This tool is distributed under a custom license. See LICENSE.txt in the repository for details.

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_arm64.tar.bz2"
      sha256 "5372f8a411fe869477a7627f99562889b3ed49beaf067dfc43e317f63809d3d5"
    else
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_x86_64.tar.bz2"
      sha256 "c58ef997fda044bf5a8c860f8deaef259bb1618c801ae5f66623cd5ee12e68ff"
    end
  end

  def install
    bin.install "asposepdftool"
  end

  test do
    system "#{bin}/asposepdftool", "--version"
  end
end
