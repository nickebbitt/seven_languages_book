require 'test/unit/assertions'
include Test::Unit::Assertions

# Access file with and without blocks #

# Without block
newFile = File.open('without_block.txt', 'w+')
newFile.puts "some text"
newFile.close

# With block
#   benefits:  auto handles the closing file resource
File.open('with_block.txt', 'w') do |file|
  file.puts "some more text"
end

# array / hash #

# hash to array
myhash = {"a" => 1, "b" => 2}
print "hash: "; p myhash
print "hash to array: "; p myhash.to_a.flatten

# array to hash
myarray = myhash.to_a
print "array: "; p myarray
print "array to hash: "; p myarray.to_h

# iterate through a hash
myhash.each {|key, value| puts "#{key} is #{value}" }

# array as a stack
stack = [1, 2, 3]
puts "stack size = #{stack.size}"
stack.push(4)
assert_equal([1, 2, 3, 4], stack)
puts "stack size = #{stack.size}"
stack.pop()
assert_equal([1, 2, 3], stack)
puts "stack size = #{stack.size}"

# array as a queue
queue = [3, 2, 1]
puts "queue items: #{queue}"
assert_equal([3, 2, 1], queue)
queue.unshift(4)
puts "queue items: #{queue}"
assert_equal([4, 3, 2, 1], queue)
first_item = queue.pop
puts "first_item: #{first_item}"
assert_equal(1, first_item)
assert_equal([4, 3, 2], queue)
puts "queue items: #{queue}"
