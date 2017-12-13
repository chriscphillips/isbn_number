# asking user for inpuy
puts "Enter your ISBN number:"
#new line asking user for input
isbn_number = gets.chomp
# # The map method takes an enumerable object and a block, and runs the block for each element, outputting each returned value from the block
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
    	valid_13_digit_isbn(isbn_array)
    # prints that the number is not valid
    else
        puts "not an isbn number. it must be 10 or 13 digits"
    end
end
 
    # function definition to verifity isbn number
def valid_10_digit_isbn(isbn_array)
	#zreo is the first digit to be multiplied im the isbn number, the count is verfiting the isbn number is a 10 or 13 digit
    isbn_number_addition_total = 0
    count_isbn = 10
    #the isbn is counted and the problem is multiplied and then added and total by digits and the multiplied by the count
    while count_isbn > 1
	    isbn_array.each do |digits|
	    isbn_number_addition_total = isbn_number_addition_total + (digits * count_isbn)
	    count_isbn = count_isbn - 1
    	end
	end	    	
    #after the total is givern the it is divided by 11 with no remainder to valid the isbn, if a remainder is found the isbn is not valid	
 	if isbn_number_addition_total % 11 == 0
   		puts "this is a valid 10 digit isbn number"
   	else
   		puts "this is not a valid isbn number"
   	end
end

def valid_13_digit_isbn(isbn_array)
	#zreo is the first digit to be multiplied im the isbn number, the count is verfiting the isbn number is a 10 or 13 digit
	count = 0
    array_addition_total = 0
    #the isbn is counted is pulled from the array and then the problem is multiplied and then added and total by digits and the multiplied by the count
    multiply_array = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1] 
    isbn_array.each do |digits|
    	array_addition_total = array_addition_total + (digits * multiply_array[count])
        count = count + 1
    end
    #after the total is givern the it is divided by 10 with no remainder to valid the isbn, if a remainder is found the isbn is not valid
	if array _addition_total % 10 == 0
    		puts "this is a valid 13 digit isbn number"
    else
    		puts "this is not a valid 13 isbn number"
    end 
end

    
initial_isbn_valid(isbn_array)
