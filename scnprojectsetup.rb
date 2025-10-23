require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.2/scnprojectsetup_1.9.2.tar.gz"
  sha256 "cef953447bd669780668b7649e96a6b564dbdcc6932cf32f22173fb066f9dfc7"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
