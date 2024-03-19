# Generated with JReleaser 1.11.0 at 2024-03-19T10:39:08.300878235Z

class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  version "0.2.3"
  license "MIT License"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.3/ret-0.2.3-linux-x86_64.zip"
    sha256 "0b0732252fd3486d1e0d87e03052b4bcd001a06ffc84084c6ea53e51f7fdaa2d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.3/ret-0.2.3-osx-aarch_64.zip"
    sha256 "c9244ce8f4beb7dd328c3e66b8de4756249d3da44d54afc0961370e700a8cb60"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.3/ret-0.2.3-osx-x86_64.zip"
    sha256 "a0961d3d2e0654b2256c38df21fc7b3d7e6af210a4c35184cfe2a6f82b2bebbc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.2.3", output
  end
end
