require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.1/scnprojectsetup_1.9.1.tar.gz"
  sha256 "429dab7676f25afc8447bea1fc78dcceb8db86b7f39957955a9554c86ff6a9b9"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
