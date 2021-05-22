module KansaiString
  refine String do
    def kansai
      "#{self}やで！"
    end
  end
end

using KansaiString

puts "たこ焼き".kansai #=> たこ焼きやで！
