class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.23.0/twine2yoto-macos-arm64.zip"
      sha256 "f20bbce5f2c016a1ea45cc594010a24d603e8d3d7283cb56c3e0cbd4dc8d6ac5"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.23.0/twine2yoto-macos-x64.zip"
      sha256 "9c8799da7b48db417948fcf182fc13608fba4430422f8169faab95498d2b1c5f"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
