# git clone https://gist.github.com/3072321
require 'formula'

class Meteor < Formula
  homepage 'http://www.meteor.com'
  url 'http://d3sqy0vbqsdhku.cloudfront.net/meteor-package-Darwin-x86_64-0.5.7.tar.gz'
  sha1 '64160921f4cd6452a78814feebb61646310b98b5'

  def install
    libexec.install(Dir['{.*,*}'] - ['.', '..']) # includes dotfiles
    (bin+'meteor').write <<-EOS.undent
      #!/bin/bash
      exec "#{libexec}/bin/meteor" "$@"
    EOS
  end

  def test
    system "#{bin}/meteor", '--version'
  end
end
