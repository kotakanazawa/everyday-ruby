# privateメソッドはレシーバ付きで呼び出せない
class User
  private

  def name
    'Lebron'
  end
end

p User.new.name #=> private method `name' called for #<User:0x00007f979f027cc0> (NoMethodError)

user = User.new
p user.name #=> private method `name' called for #<User:0x00007fc032887cb0> (NoMethodError)


class User

  def hello
    "I am #{self.name}"
  end

  private

  def name
    'Lebron'
  end
end

user = User.new
p user.name #=> private method `name' called for #<User:0x00007f884402e1c0> (NoMethodError)
