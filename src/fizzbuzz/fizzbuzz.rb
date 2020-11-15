
num = 1

until num == 100
    string = ""
    if num % 3 == 0
        string += "Fizz"
    end
    if num % 5 == 0
        string += "Buzz"
    end
    if num % 3 != 0 && num % 5 != 0
        string += num.to_s
    end
    puts string
    num += 1
end