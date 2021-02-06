module Hoge
  def bar
    'barbar'
  end
end

class Virus
  prepend Hoge
  def bar
    'aaaa'
  end
end

# prependを使うと、同名メソッドがあるばあいはmoduleのほうが先に呼ばれる
p Virus.new.bar
