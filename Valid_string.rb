require 'pry'
string = gets.chomp
string_vector = string.split('')
letters_counter = Array.new
j = 0
movements_min = 0
movements_max = 0

for i in 0...string_vector.size
    if string_vector[i] === string_vector[i+1]
        letters_counter[j] = string_vector.count(string_vector[i])
    elsif string_vector[i] != string_vector[i+1]
    	letters_counter[j] = string_vector.count(string_vector[i])
    	j+=1
    end
end

max = letters_counter.max
min = letters_counter.min

for i in 0...letters_counter.size
	if letters_counter[i] < max
		letters_counter[i] = letters_counter[i] + 1
		movements_max += 1
	end			
end

for i in 0...letters_counter.size
	if letters_counter[i] > min
		letters_counter[i] -= 1
		movements_min += 1	
	end			
end

movements = [movements_max, movements_min].min

if movements <= 1
	puts "YES"
else
	puts "NO"
end
