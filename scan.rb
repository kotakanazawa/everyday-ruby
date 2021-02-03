p hoge = 'abcdef'.scan(/\w\w/) #=> ["ab", "cd", "ef"]
p hoge.map(&:upcase) #=> ["AB", "CD", "EF"]

a = []
b = [2, 3]
p a.push(1) #=> [1]
# *bとすることでb配列が展開されて代入される
p a.push(*b) #=> [1, 2, 3]
