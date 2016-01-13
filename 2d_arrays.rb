require 'pry'

arr = Array.new(6)
for arr_i in (0..(6 - 1))
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

def getSum(arr, x, y)
    sum = arr[x][y].to_i
    for i in (-1..1)
        sum += arr[x - 1][y + i].to_i
        sum += arr[x + 1][y + i].to_i
    end
    return sum
end

max = 8 * -10
for x in (1..4)
    for y in (1..4)
        max = [max, getSum(arr, x, y)].max
    end
end

puts max




