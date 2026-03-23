require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.5/scnprojectsetup_1.9.5.tar.gz"
  sha256 "9697fe6321f141a948508a24762841d055e1052abefd8c6d4da82e07fcc1e2e4"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
