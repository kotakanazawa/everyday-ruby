module Attackable
  def waza(text)
    puts "[WAZA] #{text}"
  end
end

class Saiya
  extend Attackable

end

# extendは特異メソッド（クラスメソッド）として呼び出せるようになる
Saiya.waza('かめはめ波') #=> [WAZA] かめはめ波
