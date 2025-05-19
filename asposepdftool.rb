class Asposepdftool < Formula
  desc "Aspose.PDF CLI App"
  homepage "https://github.com/aspose-pdf/asposepdftool"
  version "25.5.1"
  license :cannot_represent # This tool is distributed under a custom license. See LICENSE.txt in the repository for details.

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_arm64.tar.bz2"
      sha256 "fe21eaa4a60aaa1f676a7a3b1868c59dab0ed7fde88e155b788e89e285084f41"
    else
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_x86_64.tar.bz2"
      sha256 "36dbf773c0ada1123c9242d2c06d98c70ae84b71d8fff4a847bdc0936e64f807"
    end
  end

  def install
    bin.install "asposepdftool"
  end

  test do
    system "#{bin}/asposepdftool", "--version"
  end
end
