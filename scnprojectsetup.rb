require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.0/scnprojectsetup_1.6.0.tar.gz"
  sha256 "57c49225491aebf08e0bf688ecccebedd716a9df107635a5c363dddf59ea1b4d"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
