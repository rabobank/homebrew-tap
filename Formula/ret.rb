# Generated with JReleaser 1.11.0 at 2024-03-18T11:55:59.359880507Z

class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.2/ret-0.2.2-osx-x86_64.zip"
  version "0.2.2"
  sha256 "58139dfc2169b1c2c4c9300eb390c8715f129dac5905fed2db2175a444f5e1c8"
  license "MIT License"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.2.2", output
  end
end
