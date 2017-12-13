#asks user for numerical input and takes in the number and
#("") {|s| s.to_i} #parses the number into individual digits and places in the array

puts "Type your ISBN number: \n \n" 
isbn_number = gets.chomp 
isbn_array = isbn_number.split("").map(&:to_i)
print isbn_array
puts "\nYour number has  digits" 









