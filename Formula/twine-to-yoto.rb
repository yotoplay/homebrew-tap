class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.21.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.21.1/twine2yoto-macos-arm64.zip"
      sha256 "86c865370e5056ddafa1a80f63e7b1da402056d86bed91412d324691f07ffd73"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.21.1/twine2yoto-macos-x64.zip"
      sha256 "85b60d8807e34de8c7856888e96a9b4bb159a9babcefedf69b2f0d783df771cd"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
