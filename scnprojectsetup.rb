require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://raw.githubusercontent.com/santonsen/homebrew-scnprojectsetup/master/dist/scnprojectsetup-0.0.1.tar.gz"
  sha1 "e61106d2b05cb68cca80f1b02762580d9dd59dcd"

  def install
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
