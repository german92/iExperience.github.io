names = %w(Beam
Struck
Tenn
Zhao
Saini
Hu
Taleisnik
Liu
Cheng
Kassier
Premaratne
Krook
Gill
Swift
Ginsberg
Wehlin
Trudell
Ahuja
Chauvin)

names.shuffle.each_with_index do |name, index|
  puts if index%3 == 0
  print "#{name}, "
  
end

