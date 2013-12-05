require 'open-uri'

open("https://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line}
  puts "GETTING STARTED"
  puts f.base_uri       # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
  puts "BASE URIIIIIIII"
  puts f.content_type   # "text/html"
  puts "CONTENT_TYPEEEEEEE"
  puts f.charset        # "iso-8859-1"
  puts "CHARSETTTTTT"
  puts f.content_encoding # []
  puts "ENCODINGGGGGGG"
  puts f.last_modified # Thu Dec 05 02:45:02 UTC 2002
  puts "LAST MODIFIEDDDDDD"

end