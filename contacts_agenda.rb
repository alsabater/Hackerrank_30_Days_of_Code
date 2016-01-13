n = gets.strip.to_i
contacts = Hash.new
while n>0 do
  name = gets.chomp.to_s
  phone = gets.chomp.to_s
  contacts[name] = phone
  n-=1
end

query = "Hey"

while query!=' ' do
  query = gets.chomp.to_s
  if contacts.has_key?(query)
    puts query + "=" + contacts[query]
  else
    puts "Not found"
  end
end
