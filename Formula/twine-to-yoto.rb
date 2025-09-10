class TwineToYoto < Formula
  desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
  homepage "https://github.com/yotoplay/twine-to-yoto"
  version "1.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.16.1/twine2yoto-macos-arm64.zip"
      sha256 "213df7e0c5717db42059f630c2bcfaca70779a62e4b692c543218f2906e1467f"
    else
      url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.16.1/twine2yoto-macos-x64.zip"
      sha256 "287c0f783a9b4359bc27055ec627362c489fac056925a9b63e5df1e99cc203f5"
    end
  end

  def install
    bin.install "twine2yoto"
  end

  test do
    system "#{bin}/twine2yoto", "--help"
  end
end
