class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.20.0/twine2yoto-macos-arm64.zip"
      sha256 "ac70cd5aaca9859d6ae2bb785c289a7570f047aefa0493d925fbcfc6812ba8a7"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.20.0/twine2yoto-macos-x64.zip"
      sha256 "90b71c58583d6852acc7bfecab9487e0b29c2f539f25f2ccc75c595bccf4fe83"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
