# git clone https://gist.github.com/3072321
require 'formula'

class Meteor < Formula
  homepage 'http://www.meteor.com'
  url 'http://d3sqy0vbqsdhku.cloudfront.net/meteor-package-Darwin-x86_64-0.4.0.tar.gz'
  sha1 'eeddf0a529e6664e99cb10e8335389b53e95abde'

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
