require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.4/scnprojectsetup_1.6.4.tar.gz"
  sha256 "a36434d97ddd598e2789fe6e61b170f5779b3ef404313cf92e3bc310724e939f"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
