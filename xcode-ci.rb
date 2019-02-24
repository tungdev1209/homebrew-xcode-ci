class XcodeCi < Formula
  desc "CI iOS/MacOS app via command-line"
  homepage "https://tungdev1209.github.io/xcode-ci/"
  url "https://github.com/tungdev1209/xcode-ci/archive/v1.1.9.tar.gz"
  sha256 "6d0ccc27692944384c7c6c64c3c5d64e1eec54236b20009907b3168db7dc730e"

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
