require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.3/scnprojectsetup_1.9.3.tar.gz"
  sha256 "2a64fdf601dd518c0093300a4c7d0996d0855ba206a2210492f912ebd01f23c9"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
