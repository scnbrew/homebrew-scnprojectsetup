require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.3.1/scnprojectsetup_1.3.1.tar.gz"
  sha1 "a3d5a8c9e5a612f98e5a9ce38f7c63e13a891349"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
