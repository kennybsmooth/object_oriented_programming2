require_relative 'item'
require_relative 'receipt'

receipt = Receipt.new

puts "\nWelcome to my online store!"

in_session = true

while in_session
puts "\nPlease select a product category and press ENTER.
Books
Clothes
Electronics
Food
Games
Medicine\n
"

step1 = true
while step1
  print "Selection > "
  type = gets.chomp.upcase
  if type == "BOOKS" || type == "CLOTHES" || type == "ELECTRONICS" || type == "FOOD" || type == "GAMES" || type == "MEDICINE"
    puts "\nThank You!"
    puts

step1 = false
  else
    puts "Invalid entry please try again."
    puts
  end
end

puts "\nWould you like to search our imported 'I' or domestic 'D' inventory?"
puts

step2 = true
  while step2
  print "Selection > "
  imported = gets.chomp.upcase
  if imported == 'I' || imported == 'IMPORTED'
    puts "\nThank You!"
    puts
    imported = true
    step2 = false
  elsif imported == 'D' || imported == 'DOMESTIC'
    puts "\nThank You!"
    puts
    imported = false
    step2 = false
  else
    puts "Invalid entry please try again."
    puts
  end
end

puts "\nHow much would you like to spend?"
puts

step3 = true
while step3
  print "Selection > $"
  cost = gets.chomp.to_f
  if cost <= 0
    puts "Invalid entry please try again."
    puts
  else
    puts "\nThank You!"
    puts
    puts
    step3 = false
  end
end

item = Item.new(type, cost, imported, receipt)

puts "Would you like to purchase another item 'Y' or 'N'?"
puts

step4 = true
  while step4
  print "Selection > "
  add_another = gets.chomp.upcase
  if add_another == 'Y' || add_another == 'YES'
    step4 = false
  elsif add_another == 'N' || add_another == 'NO'
    in_session = false
    step4 = false
  else
    puts "Invalid entry please try again."
    puts
  end
end
end
receipt.report
