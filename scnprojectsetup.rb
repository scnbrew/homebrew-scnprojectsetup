require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.0.0/scnprojectsetup_1.0.0.tar.gz"
  sha1 "2d869c62995e19b618154c1221e10951402c200e"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
