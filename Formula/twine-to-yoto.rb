class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.16.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.16.2/twine2yoto-macos-arm64.zip"
      sha256 "4c38e4d0a3608a3c4e655eab1fd0ceb61a2c39fd1618798cec7c05a74b6f6821"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.16.2/twine2yoto-macos-x64.zip"
      sha256 "cc7a67077baa8bad92f86ea38bf74e10139727242e0934d4a9cb243102f93346"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
