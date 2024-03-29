# 5になるまで、2に1を足しながらpする
# 第2引数に何も指定しないとデフォルトで1を加算する
pp 2.step(5) { |n| p n }
# 2
# 3
# 4
# 5
# => 2

# 5になるまで、2に2を足しながらpする
# 5を超える前にストップする。第2引数に2が渡されているので2を加算している
pp 2.step(5, 2) { |n| p n }
# 2
# 4
# => 2
