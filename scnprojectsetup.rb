require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.9/scnprojectsetup_1.9.9.tar.gz"
  sha256 "5827b5121dbdfae9354263f2def62a81e4a1d7f2aa18a063f1b3c6850239eb15"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
