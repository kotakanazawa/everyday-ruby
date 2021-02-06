module Attackable
  def waza(text)
    puts "[WAZA] #{text}"
  end
end

class Saiya
  include Attackable

  def attack
    waza 'かめはめ波'
  end
end

Saiya.new.attack
