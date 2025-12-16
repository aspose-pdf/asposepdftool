class Asposepdftool < Formula
  desc "Aspose.PDF CLI App"
  homepage "https://github.com/aspose-pdf/asposepdftool"
  version "25.12.0"
  license :cannot_represent # This tool is distributed under a custom license. See LICENSE.txt in the repository for details.

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_arm64.tar.bz2"
      sha256 "3d2aaaa61dc204a82f9f7847d0a95aa9f9bfeb452f490e4649f929c27b156d07"
    else
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_x86_64.tar.bz2"
      sha256 "914a7d218fbaffd108d72a9023bbcd238228e94879b9daca5db21b377e8dbdf7"
    end
  end

  def install
    bin.install "asposepdftool"
  end

  test do
    system "#{bin}/asposepdftool", "--version"
  end
end
