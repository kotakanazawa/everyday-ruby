class Saiya
  private

  def kamehameha
    'かめはめ波！'
  end
end

class Goku < Saiya
  def attack
    "これでもくらえ！#{kamehameha}"
  end
end

goku = Goku.new
p goku.attack #=> "これでもくらえ！かめはめ波！"
