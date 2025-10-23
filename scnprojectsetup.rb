require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.2/scnprojectsetup_1.8.2.tar.gz"
  sha256 "d90b142b0dbcaf2a4b61499106132b8f84995e12304b27ec565a3079d463a775"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
