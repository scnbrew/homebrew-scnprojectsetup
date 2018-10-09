require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.9/scnprojectsetup_1.6.9.tar.gz"
  sha256 "e50ac1c9f8520731444d3538511a87ba8091bb58474f250ee79bb3eb102eaa82"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
