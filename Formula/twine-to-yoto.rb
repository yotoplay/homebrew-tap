class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.18.0/twine2yoto-macos-arm64.zip"
      sha256 "fa819f542701c0fff27e15aeb2794eabc40f93eb9d547b807cfff9ba0bf84ef4"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.18.0/twine2yoto-macos-x64.zip"
      sha256 "38debeea6899cd653cf37d0605cc8b705cddddf2efde91d3d5c9d32253380860"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
