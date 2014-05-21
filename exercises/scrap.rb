# Tag replace regex:
#   <([^<]+)>
#   &lt;\1&gt;  
# Tag highlight regex:
#   (&lt;[^&]+&gt;)
#   <span class="tag">\1</span> 
# String replace regex:
#   (\"[^"]+\")&
#   <span class="string">\1</span>&
module Piglatinify
  def piglatinify
    str = self.to_s
    first = str[0]
    if /[[:upper:]]/.match(first)
      return (str[1..-1] + first.downcase + "ay").capitalize
    else
      return str[1..-1] + first + "ay"
    end
  end

  def piglatinify_sentence
    self.to_s.split(" ").map(&:piglatinify).join(" ")
  end
end

class String
  include Piglatinify
end

class Array
  include Piglatinify
end

class Person
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end
end

class Christian < Person
  def initialize(name, type)
    @name = name
    @type = type
  end

  def go_to_mass
    puts "Going to mass..."
  end
end 

luke = Christian.new("luke", "original")

module HasGlasses
  def put_on_glasses
    @glasses = "on"
  end
  def take_off_glasses
    @glasses = "off"
  end
  def drink_ten_glasses
    @thirsty = "false"
  end

  def glasses_on?
    return (@glasses == "on")
  end
end

class Christian < Person
  include HasGlasses
end

class Muslim < Person
  include HasGlasses
end

joe = Muslim.new("joe")
joe.glasses_on?
puts HasGlasses.class
puts Muslim.class
puts joe.class

HasGlasses = 7
