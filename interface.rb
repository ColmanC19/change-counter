#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/allergy')
require ('./lib/change')
require ('./lib/prime')

puts ('Welcome to our program!')

resume = true
while(resume)
  puts("Select a function:")
  puts("1: Coin Combinations")
  puts("2: Prime Sifting")
  puts("3: Allergy Score")
  function = gets.chomp

  case function
  when "1"
    puts ("Coin Combinations!")
    puts ("Please Enter a Number")
    input = gets.chomp.to_s
    change = Change.new()
    puts(change.make_change(input))

  when "2"
    puts ("Prime Sifting!")
    puts ("Please Enter a Number")
    input = gets.chomp.to_i
    prime = Prime.new()
    puts(prime.find_prime(input))

  when "3"
    puts ("Allergy Score!")
    puts ("Please Enter a Number")
    input = gets.chomp.to_i
    allergy = Allergy.new()
    puts(allergy.allergy_score(input))

  end

    puts("\n \n Would you like to run another program? Y/N ")
  doResume = gets.chomp
  if doResume == "Y" || doResume == "y"
    resume = true
  else
    resume = false
  end
  puts("Ending Program")
  puts("Good bye.")
end
