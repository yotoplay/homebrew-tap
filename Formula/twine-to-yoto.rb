class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.15.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.15.6/twine2yoto-macos-arm64.zip"
      sha256 "8653323ca40e19912d05b3d6c29212746f871fcf9d4605447cbb7934a2482f79"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.15.6/twine2yoto-macos-x64.zip"
      sha256 "3bc154c590afb3db1027166ccdd8bf0c3ece9c1d937dcaa173536c74a0451019"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
