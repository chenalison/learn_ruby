#write your code here
def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def sum(numbers)
    sum = 0
    numbers.each { |n|
        sum = sum + n
    }
    sum
end

def multiply(numbers)
    product = numbers[0]
    numbers[1...].each { |i|
        product = product * i
    }
    product
end

def power(base, power)
    base**power
end

def factorial(n)
    if n == 0
        1
    else
        product = 1
        while n > 0 do
            product = product * n
            n = n - 1
        end
        product
    end

    
end

