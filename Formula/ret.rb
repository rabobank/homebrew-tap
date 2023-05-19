# Generated with JReleaser 1.6.0 at 2023-05-19T13:18:17.229961611Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.1.0/ret-0.1.0-osx-x86_64.zip"
  version "0.1.0"
  sha256 "fee8bc4dc01dc5cb71fd51b0bba3ac043e353c425c28aa4e5b2bdde66dec83ae"
  license "&#39;MIT License&#39;"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.1.0", output
  end
end
