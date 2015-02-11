require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.4.3/scnprojectsetup_1.4.3.tar.gz"
  sha1 "ffb3f2ed4f5288c1334ef4721e9a602d0b68200c"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
