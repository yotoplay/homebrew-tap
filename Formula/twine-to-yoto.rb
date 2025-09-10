class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.16.0/twine2yoto-macos-arm64.zip"
      sha256 "2c4e77851e3d7a0b4cc52436cf369a1caf72db08dade24063b9797e0fa47cb5e"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.16.0/twine2yoto-macos-x64.zip"
      sha256 "5a53bc3eb900c413c0a9c48844218d390447132c08515ef599c847eb38d92895"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
