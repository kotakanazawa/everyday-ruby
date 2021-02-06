class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"
  end
end

class User
  def hello
    "#{@name}, bounjour"
  end
end

p User.new('hoge').hello #=> "hoge, bounjour"
