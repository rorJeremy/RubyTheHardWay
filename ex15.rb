#assigns the 'ex15_sample.txt' string to variable 'filename'
#filename = ARGV.first

prompt = "> "
#opens the 'ex15.sample_txt' file
#txt = File.open(filename)

#puts "Here's your file: #{filename}"
#prints out the file content
#puts txt.read()

#puts "I'll also ask you to type it again:"
puts "What file do you want to read?"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()

txt_again.close()