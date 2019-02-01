class XcodeCi < Formula
  desc "CI iOS/MacOS app via command-line"
  homepage "https://tungse1209.github.io/xcode-ci/"
  url "https://github.com/tungse1209/xcode-ci/archive/v1.1.4.tar.gz"
  sha256 "cdd4696b707d035190ff306d0c5ea5467cf920873d8281531d03ebe4bd7ed897"

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
