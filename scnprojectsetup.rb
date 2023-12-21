require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.0/scnprojectsetup_1.8.0.tar.gz"
  sha256 "633192b7837c1565c4af97e563b7e5ca170e7a57bddbe87e3d2ff4bc1a3e0898"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
