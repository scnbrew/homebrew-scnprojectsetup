require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.4/scnprojectsetup_1.9.4.tar.gz"
  sha256 "af546a839d4d2b42bd532cf0e02a17d6c90c134c3f23cff661f6740c42c2aba4"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
