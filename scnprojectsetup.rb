require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_0.0.1/scnprojectsetup_0.0.1.tar.gz"
  sha1 "e61106d2b05cb68cca80f1b02762580d9dd59dcd"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
