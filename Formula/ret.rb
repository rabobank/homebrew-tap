# Generated with JReleaser 1.13.1 at 2024-08-30T11:20:28.646747924Z

class Ret < Formula
  desc "RET Engineering Tools"
  homepage "https://github.com/rabobank/ret-engineering-tools"
  version "0.2.4"
  license "MIT License"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.4/ret-0.2.4-linux-x86_64.zip"
    sha256 "5606e5e41d2d6bce58f3e968c58bc2a79f690260e61b3811993b03a8dc9671f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.4/ret-0.2.4-osx-aarch_64.zip"
    sha256 "1d34f9f4523bdf70ba533526e38f993270cf34ac9f077d250f5d80859114df61"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rabobank/ret-engineering-tools/releases/download/0.2.4/ret-0.2.4-osx-x86_64.zip"
    sha256 "00ab1d602ef84b800989109137e227578be631990d6a0e43164c71f0b2571380"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ret" => "ret"
  end

  test do
    output = shell_output("#{bin}/ret --version")
    assert_match "0.2.4", output
  end
end
