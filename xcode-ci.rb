class XcodeCi < Formula
  desc "CI iOS/MacOS app via command-line"
  homepage "https://tungdev1209.github.io/xcode-ci/"
  url "https://github.com/tungdev1209/xcode-ci/archive/v1.1.15.tar.gz"
  sha256 "8117804f4b3ed8a9a24bb17c4e48018874543aa0696f8620ef2c71ecc0d3048c"

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
