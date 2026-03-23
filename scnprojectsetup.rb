require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.4/scnprojectsetup_1.9.4.tar.gz"
  sha256 "eb0a56b8218ee8a327b0edb91b32c7f380478d7e6ffecaf6ffdafb641a03a05d"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
