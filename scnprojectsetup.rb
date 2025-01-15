require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.0/scnprojectsetup_1.9.0.tar.gz"
  sha256 "bf7e0287c616be08a62bf618382fd7155bd3ab14149ae3b711a411a2eaa71f84"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
