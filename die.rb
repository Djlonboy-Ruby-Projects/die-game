opponent1 = ""
opponent2 = ""
dieRoll = 0
opponent1Roll = 0
opponent2Roll = 0
system ('clear')
puts ""
puts "------------------------------"
puts "Opponent 1, enter your name:"
opponent1 = gets.chomp
puts "Opponent 2, enter your name:"
opponent2 = gets.chomp
system ('clear')

puts ""
puts "------------------------------"
puts "#{opponent1}: your roll..."
sleep(2)
dieRoll = rand(7)
puts ""
puts "#{opponent1}, you rolled #{dieRoll}"
opponent1Roll = dieRoll
puts ""
puts "#{opponent2}: your roll..."
sleep(2)
dieRoll = rand(7)
puts ""
puts "#{opponent2}, you rolled #{dieRoll}"
opponent2Roll = dieRoll
puts ""
if opponent1Roll > opponent2Roll
  puts "#{opponent1} wins!"
elsif opponent1Roll < opponent2Roll
  puts "#{opponent2} wins!"
elsif opponent1Roll == opponent2Roll
  puts "It's a draw!"
end
puts ""
puts "------------------------------"
puts ""
