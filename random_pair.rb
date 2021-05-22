# 仕様
# 2人のペアを作りたい
# ひとつの配列に、2人1組の配列を追加していく

people = %w(lebron jayson jaylen kevin rui yuta chris dirk)

def random_pair(members)
  caller(0)
  members.shuffle!
  members.each_slice(2) { |m| puts "#{m[0]}と#{m[1]}" }
end

random_pair(people)
