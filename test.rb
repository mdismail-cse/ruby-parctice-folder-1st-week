

#!/usr/bin/ruby -w

def hi
out = "print my test cased"
puts out
end

hi


print <<froto
this is the multiline comment
is this working 
froto

def hi2(name = "world")
puts "Hello #{name.capitalize}"
end 


name = gets


hi2(name)




puts "Enter elements of the array (separated by spaces):"
input = gets.chomp
array = input.split(" ")

puts "The array you entered is: #{array.inspect}"

