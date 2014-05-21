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
    str[1..-1] + first + "ay"
  end
end

class Array
  include Piglatinify
end

p " 
  tripsay emay \t ".strip
