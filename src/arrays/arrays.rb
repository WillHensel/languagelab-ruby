# The purpose of this is to notice that arrays that are passed to functions
# can be modified as if they are pass by reference, as in you can modify
# values in the array and they persist in the scope in which the 
# function was called. This behavior doesn't extend to other types such as string.


# Modify the array by passing it to this function
def play_with_values(arr)
    arr[0], arr[1] = arr[1], arr[0]
    arr[2], arr[3] = arr[3], arr[2]
end

# Define an array to modify
array = [1, 2, 3, 4]

# Call our play_with_values function on the array
play_with_values(array)

# Prints "2 1 4 3"
for i in array
    print i.to_s + " "
end
puts

# The behavior does not extend to other data types
def change_a_string(string)
    string += ", World!"
end

string1 = "Hello"

# Prints "Hello"
change_a_string(string1)
puts string1