require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.4.6/scnprojectsetup_1.4.6.tar.gz"
  sha1 "b36e3348552cdc9cda668c11f2a78cd62bf1ac32"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
