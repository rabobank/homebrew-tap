# Generated with JReleaser 1.6.0 at 2023-05-25T12:04:48.141052216Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.1.2/ret-0.1.2-osx-x86_64.zip"
  version "0.1.2"
  sha256 "913a0d54f5407cd470c39106e769d04b3b0dccd8325cb1d2ad601336d8361164"
  license "&#39;MIT License&#39;"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.1.2", output
  end
end
