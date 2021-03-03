class Foo
  puts "一番上のFoo"
end

module MyNameSpace
  class Foo
    puts "MyNameSpaceのFoo"
  end
end

def foo1
  ::Foo.new #=> 一番上のFoo
end

def foo2
  Foo.new #=> MyNameSpaceのFoo
end
