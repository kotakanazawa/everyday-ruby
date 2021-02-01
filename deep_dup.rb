require 'active_support'
require 'active_support/core_ext'

ary = ['protein', 'fat', 'carb']
deep_dup_ary = ary.deep_dup

p ary.object_id  #=> 60
p deep_dup_ary.object_id #=> 80

deep_dup_ary.first.gsub!('protein', 'pork')
p deep_dup_ary #=> ["pork", "fat", "carb"]

# 元の配列は破壊的変更が加わっていない。Rubyのdupでやると破壊的変更が行われるのに！
p ary #=> ["protein", "fat", "carb"]
