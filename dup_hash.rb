original_hash = {
  a: 1,
  b: 2,
  c: 3
}

hash_copy = original_hash
hash_from_copy = hash_copy.dup

p original_hash.object_id # 60
p hash_copy.object_id # 60
p hash_from_copy.object_id # 80

hash_copy.delete_if do |key, _value|
  key == :a
end

# オリジナルも破壊的変更がされる
p hash_copy #=> {:b=>2, :c=>3}
p original_hash #=> {:b=>2, :c=>3}

# コピーをdupしたものは変更されない
p hash_from_copy #=> {:a=>1, :b=>2, :c=>3}
