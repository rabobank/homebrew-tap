# Generated with JReleaser 1.6.0 at 2023-06-07T09:36:03.562107081Z
class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.1.3/ret-0.1.3-osx-x86_64.zip"
  version "0.1.3"
  sha256 "c3a76172d651493a56b56a817444472cb43445ec26212f796c2740a50021c5a3"
  license "&#39;MIT License&#39;"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.1.3", output
  end
end
