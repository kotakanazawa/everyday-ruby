require 'pry'

def hoge
  raise ArgumentError.new('例外だぜーーーーい')
  rescue NoMethodError => e
    puts 'NoMethodError節で補足されました'
    puts "例外クラス名: #{e.class}"
    puts "例外メッセージ: #{e.message}"
  rescue NameError => e
    puts "NameError節で補足されました"
    puts "例外クラス名: #{e.class}"
    puts "例外メッセージ: #{e.message}"
  rescue StandardError => e
    puts "StandardError節で補足されました"
    puts "例外クラス名: #{e.class}"
    puts "例外メッセージ: #{e.message}"
    binding.pry
end

hoge
