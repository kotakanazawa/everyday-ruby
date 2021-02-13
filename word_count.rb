# "no ruby no life"
# ↓単語数をカウントしてください
# {"no" => 2, "ruby" => 1, "life" => 1}
# tallyを使わずに(Ruby 2.7.x~)

ary = "no ruby no life".split(' ')

# 1
hash = Hash.new(0)
ary.each { |word| hash[word] += 1 }
pp hash

# 2
pp ary.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }

# tally便利
pp ary.tally
