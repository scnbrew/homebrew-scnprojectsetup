require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/santonsen/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.5.0/scnprojectsetup_1.5.0.tar.gz"
  sha1 "031d4661e9dc7a0437b042889909ac370c5da969"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
