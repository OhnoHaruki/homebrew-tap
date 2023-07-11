VERISON="1.0.0"
class ShortURLz < Formula
    desc "URL shortner via bit.ly, etc."
    homepage "https://ohnoharuki.github.io/shortURLz"
    url "https://github.com/OhnoHaruki/shortURLz/releases/download/v#{VERSION}/shortURLz-#{VERSION}_darwin_amd64.tar.gz"
    version VERSION
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    license "MIT"
    option "without-completion@2" => :optional
    def install
        bin.install"shortURLz"
        bash_completion.install "completions/bash/shortURLz" if build.with? "completions"
    end
    test do
        system bin/"shortURLz","--version"
    end
end