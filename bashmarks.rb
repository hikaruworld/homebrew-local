require 'formula'

class Bashmarks < ScriptFileFormula
  head 'https://github.com/hikaruworld/bashmarks.git', :revision => 'cc0bd41c3bdd5d0cda77a9d736e1db1523104f9d'

  def install
    bin.install Dir['bin/*']
  end

end
