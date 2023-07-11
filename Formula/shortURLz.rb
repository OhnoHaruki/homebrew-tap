VERSION="0.1.11"

class Shorturlz < Formula
    desc "URL shortner via bit.ly, etc."
    homepage "https://ohnoharuki.github.io/shortURLz"
    url "https://github.com/OhnoHaruki/shortURLz/releases/download/v#{VERSION}/shortURLz-#{VERSION}.tar.gz"
    version VERSION
    sha256 "f13d9611ce4160209f33c2ee493040c13a9241ff06d5ae9398ac95aa6a5812d1"
    license "MIT"
    option "without-completions", "Disable bash completions"
    depends_on "without-completion@2" => :optional
    def install
        bin.install"shortURLz"
        bash_completion.install "completions/bash/shortURLz" if build.with? "completions"
    end
    test do
        system bin/"shortURLz","--version"
    end
end