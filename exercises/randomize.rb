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
Gill
Swift
Ginsberg
Wehlin
Trudell
Ahuja
Chauvin)

puts "<table class='reveal bordered'>"
row = 1
group_size = 4
names.shuffle.each_with_index do |name, index|
  if index%group_size == 0
    print "\t<tr>\n\t\t<td>#{row}</td>" 
    row += 1
  end
  print "<td>#{name}</td>"
  print "\n\t</tr>\n" if index%group_size == group_size - 1
end
puts "\n</table>"
