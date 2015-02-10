require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.4.2/scnprojectsetup_1.4.2.tar.gz"
  sha1 "6a8fde77f2a690f9394251f02f2ff282f99e14b2"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
