begin
  1 / 0
rescue => e
  puts "Err: #{e.class}" #=> Err: ZeroDivisionError
  puts "Err: #{e.message}" #=> Err: divided by 0
  puts "バックトレース"
  puts e.backtrace
  puts "-----"
end

=begin
Err: ZeroDivisionError
Err: divided by 0
バックトレース
rescue_basic.rb:2:in `/'
rescue_basic.rb:2:in `<main>'
=end
