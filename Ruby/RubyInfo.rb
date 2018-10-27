# Open ruby console: cmd -> enter irb


# VARIABLE NAMES
# variable names zonder hoofdletters
#	goed: my_name
# 	slecht: myName

# werkt met hoofdletters, gewoon niet gebruiken



# single line comment

=begin
multi
line
comment
=end



# GIVE INPUT
print "vraag"
variable_name = gets.chomp
print variable_name


# PRINT VARIABLES
a = "a"

print a
print "I want this in a string, here it is: #{a}"

# can also user puts, this will display multiple variables on different lines
b = "b"
print a,b
puts a,b





# ! achter .iets verandert hele variable

# gets -> geeft input
# .chomp -> verwijderd enter op einde ingeput ding
# Met .chomp
print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

puts "Your name is #{first_name}"


# Zonder .chomp
print "What's your first name? "
first_name = gets
first_name.capitalize!

puts "Your name is #{first_name}"





# .capitalize
answer = "answer"
answer2 = answer.capitalize

print "answer prints as #{answer}"
print "answer2 = answer.capitalize prints as #{answer2}"

answer.capitalize!

print "answer.capitalize! prints as #{answer}"



# .upcase (downcase)
reply = "reply"
reply2 = reply.upcase

print "reply prints as #{reply}"
print "reply2 = reply.upcase prints as #{reply2}"

reply.upcase!

print "reply.upcase! prints as #{reply}"





# if, else and elsif
x = 1
y = 2

if x < y
	print "x smaller, y larger"
elsif x > y
	print "x larger, y smaller"
else
	print "x and y equal"
end



# unless
is_valid = true

unless is_valid
	print "It is not valid"
else
	print "It is valid"
end


wait = true
print "Starting task" unless wait






# check if equal
if x == y
	print "They are equal"
else
	print "They are not equal"
end


# check if not equal
if x != y
	print "They are not equal"
else
	print "They are equal"
end


# ook voor true en false
is_true = 1 != 3
is_false = 1 == 3

print "is_true = #{is_true} en is_false = #{is_false}"



# vergelijkingen
test_1 = 1 < 2

test_2 = 1 <= 1

test_3 = 2 > 1

test_4 = 2 >= 2




# AND
if 1 < 2 && 8 > 5
	print "both true"
end

=begin

true && true 	=> true
true && false 	=> false
false && true 	=> false
false && false 	=> false

=end




# OR
if 1 < 2 || 2 < 1
	print "only one true"
end

=begin

true || true 	=> true
true || false 	=> true
false || true 	=> true
false || false 	=> false

=end





# NOT
if !false
	print "true"
end

=begin

!true 	=> false
!false 	=> true

=end









# combined comparison operator
puts 1 <=> 2 # 0 if values are equal, 1 if first value is greater, -1 if first values is lesser


# can also be used in sort
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

puts books


# other example
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |fruitOne, fruitTwo| 
  fruitTwo <=> fruitOne
end







# COMBINING BOOLEAN OPERATORS
if (1 > 2 || 8 < 5) && true
	print "true"
end





# .include
test_string = "hello there"
if test_string.include? "hello"
	print "It has hello in it"
end




# .gsub (global substitution)
print "test_string before: #{test_string}"

print "test_string after: #{test_string.gsub(/e/, "o")}"








# while
i = 0

while i < 5
	puts i
	i += 1 # same as i = i + 1
end

puts i





# until
i = 0

until i > 5
	puts i
	i += 1
end

puts i





# i += 1 same as i = i + 1
# i -= 1 same as i = i - 1





# for
# ... to exclude last number
for num in 1...10
	puts num
end


# .. to include last number
for num in 1..10
	puts num
end




# loop
i = 0

loop do
	i += 1
	puts i
	break if i > 5
end


=begin

loop do
	i += 1
	puts i
	break if i > 5
end

same as

loop {
	i += 1
	puts i
	break if i > 5
}

=end



# next
i = 0

loop do
  i += 1
  next if i % 2 != 0 # doens't print if i is odd
  puts i
  break if i >= 10
end









# array
my_array = [1, 2, 3, 4, 5]



# array.each
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts x
end


# .times
10.times do
  print "bla "
end




# .split
text = "hello there this is a text"
words = text.split(" ")

words.each do |word|
  puts word
end




# multidimensional array
multidim_array = [[0,0,0,0],[1,1,1,1],[2,2,2,2]]

multidim_array.each do |x|
	puts x
end


strings_array = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]


puts strings_array[0][1] # prints "swiss"


# print all values from multidimensional array
strings_array.each do |arr|
  arr.each do |str|
    puts str
  end
end






# hashes
# create hash name and assign value to one key value

pets = Hash.new

pets["Max"] = "dog"


# or create one with multiple values and key values
my_hash = {
	"name" => "Niels",
	"age" => 20,
	"hungry?" => true
}


# print hashes
puts my_hash

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

my_hash.each do |x|
	puts "#{x}"
end

my_hash.each do |x, y|
	puts "#{x}: #{y}"
end






# methods
def welcome
	puts "Welcome everyone!"
end

# use method
welcome




# method with parameters
def square(n)
	puts n ** 2
end

square(3)





# method with return
def add(num1, num2)
  return num1 + num2
end

output = add(2, 5)

puts output







