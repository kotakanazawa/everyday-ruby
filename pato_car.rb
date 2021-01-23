#「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ。

# A
pato_car = 'パトカー'.chars
taxi = 'タクシー'.chars
zip_chars = pato_car.zip(taxi)
puts zip_chars.join

# B
puts %w[パトカー タクシー].map(&:chars).transpose.join

