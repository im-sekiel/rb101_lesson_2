=begin

# A method that returns the sum of two integers

  -Add two integers.
  -Return that value

----------------------------------

START
 INT1 + INT2
END



# A method that takes an array of strings, and returns a string that is all those strings concatenated together.

  -set a variable that's = to an empty string
  -loop through the array
    -for each element within the array, << into empty string
  -return string

------------------------------------------

START
SET empty_string = ""
SET iterator = 0

WHILE iterator == current_index 
  empty_string << current array index(iterator) element
  iterator += 1

PRINT empty_string
END




# A method that takes an array of integers, and returns a new array with every other element.

  -set a variable equal to an empty array
  -loop through the array of integers
    -check if the index is odd, if so skip, otherwise push it into new array
  -return array

------------------------------------------

START 
SET empty_array = []
SET iterator = 0

WHILE iterator == current_array_index
  IF current_array_index.odd
    skip
  ELSE
    empty_array << current_array_element

PRINT current_array
END 

=end