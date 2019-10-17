opponent1 = ""
opponent2 = ""
dieRoll = 0
opponent1Roll1 = 0
opponent1Roll2 = 0
opponent1Total = 0
opponent2Roll1 = 0
opponent2Roll2 = 0
opponent2Total = 0
roundNum = 0
opponent1Wins = 0
opponent2Wins = 0

system ('clear')
puts ""
puts "------------------------------"
puts "Opponent 1, enter your name:"
opponent1 = gets.chomp
puts "Opponent 2, enter your name:"
opponent2 = gets.chomp
system ('clear')

until opponent1Wins >= 2 || opponent2Wins >= 2 do
  roundNum += 1
  system ('clear')
  puts ""
  puts "Round #{roundNum}!"
  puts "--------"
  puts "#{opponent1}: #{opponent1Wins}"
  puts "#{opponent2}: #{opponent2Wins}"
  sleep(2)
  system ('clear')

  puts ""
  puts "------------------------------"
  puts "#{opponent1}: your first roll..."
  sleep(1)
  dieRoll = rand(7)
  puts ""
  puts "#{opponent1}, you rolled #{dieRoll}"
  opponent1Roll1 = dieRoll
  puts ""
  puts "#{opponent1}: your second roll..."
  sleep(1)
  dieRoll = rand(7)
  puts ""
  puts "#{opponent1}, you rolled #{dieRoll}"
  opponent1Roll2 = dieRoll
  puts ""
  opponent1Total = opponent1Roll1 + opponent1Roll2

  puts ""
  puts "#{opponent2}: your first roll..."
  sleep(1)
  dieRoll = rand(7)
  puts ""
  puts "#{opponent2}, you rolled #{dieRoll}"
  opponent2Roll1 = dieRoll
  puts ""
  puts "#{opponent2}: your second roll..."
  sleep(1)
  dieRoll = rand(7)
  puts ""
  puts "#{opponent2}, you rolled #{dieRoll}"
  opponent2Roll2 = dieRoll
  puts ""
  opponent2Total = opponent2Roll1 + opponent2Roll2

  puts ""
  if opponent1Total > opponent2Total
    puts "#{opponent1} wins!"
    opponent1Wins += 1
  elsif opponent1Total < opponent2Total
    puts "#{opponent2} wins!"
    opponent2Wins += 1
  elsif opponent1Total == opponent2Total
    puts "It's a draw!"
  end
  sleep(2)
end

system ('clear')
puts ""
if opponent1Wins > opponent2Wins
  puts "#{opponent1} wins the game!"
elsif opponent1Wins < opponent2Wins
  puts "#{opponent2} wins the game!"
end
puts "------------------------------"
puts ""
