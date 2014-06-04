# super_strings.rb

class String
  def piglatinify
    # Check for capitalization
    if self[0].upcase == self[0]
      self[0] = self[0].downcase # Downcase old first letter
      self[1] = self[1].upcase   # Upcase new first letter
    end
    # Rest of string + first letter + "ay"
    self[1..-1] + self[0] + "ay"
  end

  def piglatinify_sentence
    pigged_words = self.split(" ").map { |word| word.piglatinify }
    pigged_words.join(" ")
    # To be fancy, you might have done it in one line:
    # self.split(" ").map({ |word| word.piglatinify }).join(" ")
    # But in my opinion, that's less clear.
  end
end


# Modules, like classes, start with capital letters
module Piglatinify
  def piglatinify
    string_self = self.to_s
    if string_self[0].upcase == string_self[0]
      string_self[0] = string_self[0].downcase # Downcase old first letter
      string_self[1] = string_self[1].upcase   # Upcase new first letter
    end
    # Rest of string + first letter + "ay"
    string_self[1..-1] + string_self[0] + "ay"
  end

  def piglatinify_sentence
    string_self = self.to_s
    pigged_words = string_self.split(" ").map { |word| word.piglatinify }
    pigged_words.join(" ")
  end
end

class Array
  include Piglatinify
end

puts [:a, :b, :c].piglatinify_sentence
