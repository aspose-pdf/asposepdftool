class Asposepdftool < Formula
  desc "Aspose.PDF CLI App"
  homepage "https://github.com/aspose-pdf/asposepdftool"
  version "25.2.0"
  license :cannot_represent # This tool is distributed under a custom license. See LICENSE.txt in the repository for details.

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_arm64.tar.bz2"
      sha256 "faae828c5772409f9f06ad7a6faf3125ecb8e4c35e13d2c958ce69fea76bd929"
    else
      url "https://github.com/aspose-pdf/asposepdftool/raw/refs/tags/v#{version}/asposepdftool_macos_x86_64.tar.bz2"
      sha256 "0be3a552652de2a65c861d1a687f65dcac9672dc68285c5c94aeb28de6bb235a"
    end
  end

  def install
    bin.install "asposepdftool"
  end

  test do
    system "#{bin}/asposepdftool", "--version"
  end
end
