
print "enter the input : "

user_input = gets.chomp


if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "repalcing s with th"
else
  puts "nothing here"
end



puts "the string #{user_input}"