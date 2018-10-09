require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.7/scnprojectsetup_1.6.7.tar.gz"
  sha256 "6c70c0ebeebc567d29a1478c567912cfb80c952fc858af56da0ab54cce8329a5"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
