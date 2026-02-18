class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.21.0/twine2yoto-macos-arm64.zip"
      sha256 "e4af2ad245029ef78e2d33f5462aa692534daee546b8cedaa3e373971d79a2b7"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.21.0/twine2yoto-macos-x64.zip"
      sha256 "13edffe1df344523d31ffee175bc0bbaa3b8f90619557b98f82b18ac7e47d7cc"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
