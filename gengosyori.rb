##「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ。

# A
pato_car = 'パトカー'.chars
taxi = 'タクシー'.chars
zip_chars = pato_car.zip(taxi)
puts zip_chars.join

# B
puts %w[パトカー タクシー].map(&:chars).transpose.join

## “Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.” という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．

str = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
p str.delete(".").split(/\s/).map(&:size)
p str.scan(/\w+/).map(&:size)
p str.split(/[ ,.]+/).map(&:size)
p str.split(/[^[:alpha:]]/).reject(&:empty?).map(&:size)
