# Generated with JReleaser 1.11.0 at 2024-03-18T08:51:18.138092936Z

class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.1/ret-0.2.1-osx-x86_64.zip"
  version "0.2.1"
  sha256 "cb2316332ce9c3c8a2e6fea9e7ea2fed4f82c221f6fe044343f457b6a8d1d2b5"
  license "MIT License"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.2.1", output
  end
end
