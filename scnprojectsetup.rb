require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.0/scnprojectsetup_1.8.0.tar.gz"
  sha256 "a6cd775236723694d2ce22bff572bc5061362153ca3083adbbfcf1f482c9003a"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
