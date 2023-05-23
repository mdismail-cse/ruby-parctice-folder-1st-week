class Thing
    def initialize(name, description)
      @name = name
      @description = description
    end
  def p1
  puts "also working"
  end
  
  
  
  end
  
  class Treasure < Thing
    def initialize(name, description, value)
      super(name, description)
      @value = value
    end
   def p
          puts "working"
   end
  
  
  
  end
  
  class Room < Thing
    # No explicit initialize method defined
  end
  
  
  test1 = Treasure.new("ismail","now free",55)
  
  test1.p
  test1.p1
  