# 外部からレシーバ付きで呼び出せる
class User
  def hello
    "Hello, I am #{name}"
  end

  private

  def name
    'Lebron'
  end
end

p User.new.hello #=> "Hello, I am Lebron"
user = User.new
p user.hello #=> "Hello, I am Lebron"
