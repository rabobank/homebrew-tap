# Generated with JReleaser 1.6.0 at 2023-05-10T08:07:05.411220749Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.0.8/ret-0.0.8-osx-x86_64.zip"
  version "0.0.8"
  sha256 "c6941416242b40763bffc79c838e0dfcdd7415732b4bd471b575ebb1b133a4da"
  license "&#39;MIT License&#39;"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.0.8", output
  end
end
