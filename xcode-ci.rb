class XcodeCi < Formula
  desc "CI iOS/MacOS app via command-line"
  homepage "https://tungse1209.github.io/xcode-ci/"
  url "https://github.com/tungse1209/xcode-ci/archive/v1.1.4.tar.gz"
  sha256 "945e25f1dd11311a666837388570ec2b467d270fbc00c3c977f03cce5c0ed727"

  def install
    bin.install "xcode-ci"
    prefix.install "Author"
    prefix.install "README.md"
    prefix.install "hooks"
    prefix.install "config"
    prefix.install "helper"
  end

  test do
    assert_match "ok", ` #{bin}/xcode-ci __test_cmd `
  end
end
