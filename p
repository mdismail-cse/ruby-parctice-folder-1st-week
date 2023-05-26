

def ismail
	puts 00
	return "return no blocks " unless block_given?
	yield
end 

ismail do 
	puts 90
	
	end


ismail
