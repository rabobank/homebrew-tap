# Generated with JReleaser 1.6.0 at 2023-05-16T13:28:14.774742107Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.0.9/ret-0.0.9-osx-x86_64.zip"
  version "0.0.9"
  sha256 "540d97394c88459d4664fa7d8f41a580b8ec04b414488378314cfe3a9941b027"
  license "&#39;MIT License&#39;"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.0.9", output
  end
end
