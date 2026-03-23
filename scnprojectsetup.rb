require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.5/scnprojectsetup_1.9.5.tar.gz"
  sha256 "92aa78f818d8350e581c944d0f14fa614f1cab1b355fd54f09cf2a1db43b7594"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
