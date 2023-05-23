#!/usr/bin/ruby 

print "name :"
name = gets.chomp

print "last_name :"

lname = gets.chomp

print "company name : "

company = gets.chomp

email =""

email <<name.downcase.split.join(".")
email <<"."
email <<lname.downcase.split.join(".")
email <<"."
email <<company.downcase
email <<".com"

puts "your email is "
puts email
