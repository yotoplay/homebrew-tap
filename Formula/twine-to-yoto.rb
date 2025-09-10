class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.17.0/twine2yoto-macos-arm64.zip"
      sha256 "4dc0449af994fec5083c30ed7f0472ead4f8ff694be18a539cb640151de997ff"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.17.0/twine2yoto-macos-x64.zip"
      sha256 "ed32c010e9753c72ce99db919e2687e7dc5a48713090697672957b2b94260b8c"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
