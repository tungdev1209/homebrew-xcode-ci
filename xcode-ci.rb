class XcodeCi < Formula
  desc "CI iOS/MacOS app via command-line"
  homepage "https://tungdev1209.github.io/xcode-ci/"
  url "https://github.com/tungdev1209/xcode-ci/archive/v1.1.14.tar.gz"
  sha256 "69903cfc8c587260d1ce5b9fc1d132ca58a60c728de5384a478316979fb7c84f"

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
