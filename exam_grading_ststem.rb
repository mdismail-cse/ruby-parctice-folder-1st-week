#!/usr/bin/ruby

print "enter the grade point :"

grade = gets.chomp.to_i

result = case grade 

when 90..100 then puts "grade is A"
when 80..90 then puts "grade is B"
else "you fail"

end

