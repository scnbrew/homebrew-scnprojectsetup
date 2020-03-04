require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.7.1/scnprojectsetup_1.7.1.tar.gz"
  sha256 "2ad698a6c965993f72f0027a5a19604691350dfb7dc9a6606457ec8fbd64cff7"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
