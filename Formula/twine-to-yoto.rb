class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.15.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.15.1/twine2yoto-macos-arm64.zip"
      sha256 "403c68d5f8518c0be525fa9c91ef468f18619b9151598c1cd9706880708f9fd9"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.15.1/twine2yoto-macos-x64.zip"
      sha256 "342a4ba98dd0d9c158c761b98c0b8628bcdc01b7ccea1dabdea5588a1fa4c424"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end 
