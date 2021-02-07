class XcodeCi < Formula
  desc "CI iOS/MacOS app via command-line"
  homepage "https://tungdev1209.github.io/xcode-ci/"
  url "https://github.com/tungdev1209/xcode-ci/archive/v1.1.9.tar.gz"
  sha256 "c70b992463e3546c6d11cf07359a5da0d4efb51881117f6403f986d0b791088e"

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
