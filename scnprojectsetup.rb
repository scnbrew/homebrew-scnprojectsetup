require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.7.2/scnprojectsetup_1.7.2.tar.gz"
  sha256 "97f1dcfbb26d6f159925f14b85eabb151d5a1280714fb1f55644a662dd9e9bd8"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
