# Generated with JReleaser 1.6.0 at 2023-05-22T07:35:31.737657188Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.1.1/ret-0.1.1-osx-x86_64.zip"
  version "0.1.1"
  sha256 "fcdb33baa5131a19c17dec8ebebb2689d3ce914a63b806f1e3896b6b591b821d"
  license "&#39;MIT License&#39;"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.1.1", output
  end
end
