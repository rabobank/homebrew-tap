# Generated with JReleaser 1.7.0 at 2023-07-13T12:25:15.814652414Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.1.4/ret-0.1.4-osx-x86_64.zip"
  version "0.1.4"
  sha256 "5446e872c100a2775ad28a6cd4bfb85b3c44746dd6cf4580399621392f50ad0d"
  license "MIT License"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.1.4", output
  end
end
