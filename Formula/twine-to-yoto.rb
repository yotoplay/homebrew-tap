class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.22.0/twine2yoto-macos-arm64.zip"
      sha256 "ce1b35530f0bba0714b9109a628518c951f6c85ffd898c4d106341fd081fc6c9"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.22.0/twine2yoto-macos-x64.zip"
      sha256 "581e9e2090320de4208f4cd63a59ce8e175edaec79d83ae4050e4d6d57babd1a"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
