require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_0.0.1/scnprojectsetup_0.0.1.tar.gz"
  sha1 "7d1f4fbba206ed3970e1a9934b2e643759d25c46"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
