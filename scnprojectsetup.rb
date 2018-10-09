require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.7.0/scnprojectsetup_1.7.0.tar.gz"
  sha256 "8fc6041267d1371200bfe17908259487962092225b5966cfd40fa6fae777eae7"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
