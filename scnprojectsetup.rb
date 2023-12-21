require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.0/scnprojectsetup_1.8.0.tar.gz"
  sha256 "c79fb419d5d25dd8d6853e934aaca13cfd7390366e583fc21869e0952215a9d1"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
