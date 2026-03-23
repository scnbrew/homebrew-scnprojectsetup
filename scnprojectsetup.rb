require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.8/scnprojectsetup_1.9.8.tar.gz"
  sha256 "850eae29a82879b4ae44a1d17596276bf210b82eb4386864b7d0107cc0da64d8"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
