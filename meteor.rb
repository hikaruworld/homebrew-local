# git clone https://gist.github.com/3072321
require 'formula'

class Meteor < Formula
  homepage 'http://www.meteor.com'
  url 'https://d3fm2vapipm3k9.cloudfront.net/bootstrap/0.6.2/meteor-bootstrap-Darwin_x86_64.tar.gz'
  sha1 'a8840ab8e35bb0a0fe9f546b66d520b11588049e'
  version '0.6.2'

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
