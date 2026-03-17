class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.23.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.23.2/twine2yoto-macos-arm64.zip"
      sha256 "2dad67368d191050546a1b434750218b024cf901dcdaba9b476862e216381f90"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.23.2/twine2yoto-macos-x64.zip"
      sha256 "1cb0a7571e66eae8d65523541f7af80cb414bd8c99ba6494e07d7efba63ef4bf"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
