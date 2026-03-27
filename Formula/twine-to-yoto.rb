class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.24.0/twine2yoto-macos-arm64.zip"
      sha256 "72a591b9b9e21dbf6f08f4e8569846ed6b903bad2fffce4075ee93e899901e39"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.24.0/twine2yoto-macos-x64.zip"
      sha256 "581e987b479edde7f8870f85071f9950751a25638f254cd11d0d46ee1de8774c"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
