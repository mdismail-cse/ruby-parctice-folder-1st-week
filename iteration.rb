#!/usr/bin/ruby

#practicing iteration on diffrent places
#iteration on hash

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# iteration on multidymentional array

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end


#adding a key pair value after initializing the hash


prices = { 
  "apple" => 0.52,
  "banana" => 0.23,
  "kiwi" => 1.42
}
 
my_hash = Hash.new
my_hash["dog"] = "woof"
my_hash["cat"] = "meow"



my_hash.each do |x,y|

puts "#{x} : #{y}"

end



