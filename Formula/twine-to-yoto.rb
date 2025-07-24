class TwineToYoto < Formula
    desc "Convert Twine/Twee documents to TweeJSON and YotoJSON"
    homepage "https://github.com/yotoplay/twine-to-yoto"
    version "1.15.4"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.15.4/twine2yoto-macos-arm64.zip"
        sha256 "a5014d3d230f61a4d74713e46c092371144e38ffa7e5a1008f900986d0931b55"
      else
        url "https://github.com/yotoplay/twine-to-yoto/releases/download/v1.15.4/twine2yoto-macos-x64.zip"
        sha256 "fd9993858ef02940c767419cbd2576eb742062890b343936a9b3e04a934f3d81"
      end
    end
  
    def install
      bin.install "twine2yoto"
    end
  
    test do
      system "#{bin}/twine2yoto", "--help"
    end
  end
