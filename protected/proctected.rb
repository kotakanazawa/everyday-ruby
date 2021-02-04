class Saiya
  attr_reader :name

  def initialize(name, ki)
    @name = name
    @ki = ki
  end

  def stronger_than?(other_saiya)
    other_saiya.ki < @ki
  end
end

goku = Saiya.new('goku', 100)
bezita = Saiya.new('bezita', 90)
# kiにはアクセスできないのでエラーになる
p goku.stronger_than?(bezita) #=> undefined method `ki' for #<Saiya:0x00007ff8f20fe9a0 @name="bezita", @ki=90> (NoMethodError)


class Saiya
  attr_reader :name

  def initialize(name, ki)
    @name = name
    @ki = ki
  end

  def stronger_than?(other_saiya)
    other_saiya.ki < @ki
  end

  protected

  # 同じクラスやサブクラス内であればレシーバ付きで呼び出せる
  def ki
    @ki
  end
end

goku = Saiya.new('goku', 100)
bezita = Saiya.new('bezita', 90)

p goku.stronger_than?(bezita) #=> true
p bezita.stronger_than?(goku) #=> false
