ary = ['protein', 'fat', 'carb']
copy_ary = ary.dup
p copy_ary #=> ["protein", "fat", "carb"]

# object_idはそれぞれ違う
p ary.object_id #=> 60
p copy_ary.object_id #=> 80

# equalではない
p ary.equal?(copy_ary) #=> false

# 元の配列に変更はない
copy_ary << 'fiber'
p copy_ary #=> ["protein", "fat", "carb", "fiber"]
p ary #=> ["protein", "fat", "carb"]

# 破壊的変更をするとどうなるか(配列の場合)
copy_ary.delete_if { |elm| elm == 'protein' }
p copy_ary #=> ["fat", "carb"]
p ary #=> ["protein", "fat", "carb"]

# 要素のひとつをgsubで変更すると元の配列も変更されている？
copy_ary.first.gsub!('protein', 'pork')
p copy_ary #=> ["pork", "fat", "carb"]
p ary #=> ["pork", "fat", "carb"]
