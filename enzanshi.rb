obj1 = 'hoge'
obj2 = 'hoge'

# object_idが同じかどうかをチェック
p obj1.equal?(obj2) #=> false

#
p obj1.eql?(obj2) #=> true

# 内容が同じかどうかをチェック
p obj1 == obj2 #=> true

# Rubyではこれはtrue
p 1 == 1.0 #=> true

h = { 1 => 'Integer', 1.0 => 'Float' }
p h[1] #=> "Integer"
p h[1.0] #=> "Float"
# ハッシュのキーとして2つのオブジェクトが等しいかどうかを判断する
p 1.eql?(1.0) #=> false

