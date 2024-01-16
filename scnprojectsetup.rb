require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.1/scnprojectsetup_1.8.1.tar.gz"
  sha256 "5c2d2dd75f09632a9b0a1a6ebc075d57397b6a0852a86b7e7b6024e1a7b87188"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
