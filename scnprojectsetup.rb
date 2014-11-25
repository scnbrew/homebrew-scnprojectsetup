require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_0.0.3/scnprojectsetup_0.0.3.tar.gz"
  sha1 "da73ff474c37d6deb704c307598d1ba563e10f70"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
