# Generated with JReleaser 1.8.0 at 2023-09-11T13:12:28.255826776Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.0/ret-0.2.0-osx-x86_64.zip"
  version "0.2.0"
  sha256 "430e6269160456c5a90d2c6c9a1012f7a49475d8532019a576617148b90690c4"
  license "MIT License"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.2.0", output
  end
end
