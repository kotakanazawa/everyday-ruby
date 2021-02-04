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

  private

  # 親クラスのkamehamehaをオーバーライドしている
  def kamehameha
    '超かめはめ波！'
  end
end

goku = Goku.new
p goku.attack #=> "これでもくらえ！超かめはめ波！"
