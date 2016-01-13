t = gets.chomp.to_i
def convertBinary(n)
  num = 0
  bin = ""
  e = n
  i = 0
  while num!=n do
    if e%2===0
	  bin = bin + "0"
	  x = 0
	  num += x*(2**(i))
	  i+=1
	  e=e/2
	elsif e%2===1
	  bin = bin + "1"
	  x = 1
 	  num +=x*(2**(i))
	  i+=1
	  e=e/2
	end
end
  puts bin.reverse
end

while t>0 do
  n = gets.chomp.to_i
  convertBinary(n)
  t-=1
end