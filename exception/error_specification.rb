begin
  'hoge'.foo
rescue ZeroDivisionError
  puts "divided by 0"
end
# ZeroDivisionErrorを補足できていないので異常終了する
# error_specification.rb:2:in `<main>': undefined method `foo' for "hoge":String (NoMethodError)

begin
  'hoge'.foo
rescue NoMethodError
  puts "NoMethodやで"
end
# 異常終了せずに例外を補足しているのでrescue節が評価されている
#=> NoMethodやで

begin
  'hoge'.foo
rescue NoMethodError => e
  puts "NoMethodやで"
  puts "エラーやで: #{e.message}"
  puts "エラーやで: #{e.backtrace}"
  puts "エラーやで: #{e.class}"
end

=begin
NoMethodやで
エラーやで: undefined method `foo' for "hoge":String
Did you mean?  for
エラーやで: ["error_specification.rb:10:in `<main>'"]
エラーやで: NoMethodError
=end

# rescue説になにも例外を指定しない場合、StandardErrorとそのサブクラスのみ補足される

