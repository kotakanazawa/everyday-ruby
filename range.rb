def liquid?(temp)
  (1..100).include?(temp)
end

p liquid?(15) #=> true
p liquid?(101) #=> false

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    500
  when 18..22
    700
  else
    1000
  end
end

p charge(1) #=> 0
p charge(7) #=> 300
p charge(14) #=> 500
p charge(19) #=> 700
p charge(40) #=> 1000
