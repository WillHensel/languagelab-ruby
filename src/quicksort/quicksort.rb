# Quicksort algorithm pseudocode
# https://www.interviewbit.com/tutorial/quicksort-algorithm/


# Define a function for handling partitioning of the array
def partition(arr, low, high)

    pivot = arr[high]
    i = low - 1

    for j in low..(high - 1)
        if arr[j] <= pivot
            i += 1
            # Swap values
            arr[i], arr[j] = arr[j], arr[i]
        end
        j += 1
    end

    # Swap values
    arr[i + 1], arr[high] = arr[high], arr[i + 1]

    return i + 1
end

#Define a function for processing the quicksort
def quicksort(arr, low, high)
    if low < high
        pivot_index = partition(arr, low, high)

        quicksort(arr, low, pivot_index - 1)
        quicksort(arr, pivot_index + 1, high)
    end
end

# Define an array for testing
array1 = [5, 87, 34, 1, 6, 9, 90, 20]

# Apply quicksort to the array
quicksort(array1, 0, array1.length() - 1)

# Print the array
for i in array1
    print i.to_s + " "
end
puts
