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
