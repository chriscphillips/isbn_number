# asking user for inpuy
puts "Enter your ISBN number:"
#new line asking user for input
isbn_number = gets.chomp
# numbers are displayed in an array different from the users input
isbn_array = isbn_number.split("").map(&:to_i)
#printing the array
print isbn_array
#started a function definition, to find isbn 10 or isbn 13 or neither
def initial_isbn_valid(isbn_array)
    #method with argument
       isbn_count = isbn_array.count
    #count the isbn number for ten numbers, and prints
    if isbn_count == 10
    	valid_10_digit_isbn(isbn_array)
    #count the isbn number for thirteen numbers, and prints 	
    elsif isbn_count == 13
    	puts "13 digits"
    # prints that the number is not valid
    else
        puts "not an isbn number"
    end
end
 
    # function definition to verifity isbn number
    def valid_10_digit_isbn(isbn_array)
    	isbn_number_addition_total = 0
        count_isbn = 10
        while count_isbn > 1
        isbn_array.each do |digits|
        isbn_number_addition_total = isbn_number_addition_total + (digits * count_isbn)
    	count_isbn = count_isbn - 1
    	end
    end	    	
    	
    	if isbn_number_addition_total % 11 == 0
    		puts "this is a valid 10 digit isbn number"
    	else
    		puts "this is not a valid isbn number"
    	end
end
def valid_13_digit_isbn(isbn_array)
	end
	
initial_isbn_valid(isbn_array)