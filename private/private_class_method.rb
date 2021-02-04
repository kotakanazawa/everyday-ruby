class Saiya
  private

  # private以下にクラスメソッドを定義しても・・・
  def self.kamehameha
    'かめはめ波！'
  end
end

# クラスメソッドとして呼び出せてしまう
p Saiya.kamehameha #=> "かめはめ波！"

class Goku

  # self構文を使う
  class << self

  private

    def kamehameha
      'かめはめ波！'
    end
  end # endも必要になる
end

# クラスメソッドとして呼び出せない
p Goku.kamehameha #=> private method `kamehameha' called for Goku:Class (NoMethodError)

class Goku
  def self.kamehameha
    'かめはめ波！'
  end

  # class << self と同じ効果がある
  private_class_method :kamehameha
end

p Goku.kamehameha #=> private method `kamehameha' called for Goku:Class (NoMethodError)
