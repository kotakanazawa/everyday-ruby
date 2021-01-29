numbers = [1,2,3,4,5]
p numbers.select(&:even?) #=> [2, 4]

# selectのエイリアスメソッド
p numbers.find_all(&:even?) #=> [2, 4]

# 戻り値が偽の要素を返す
p numbers.reject(&:even?) #=> [1, 3, 5]