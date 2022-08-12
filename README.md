# Ruby lessons by [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails)

## Number Methods:

### even?
```ruby
6.even? #=> true
7.even? #=> false
```

### odd?
```ruby
6.odd? #=> false
7.odd? #=> true
```
## String Metods:
```ruby
# With the plus operator:
"Welcome " + "to " + "Odin!" #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!" #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!") #=> "Welcome to Odin!"

"he77o".sub("7", "l") #=> "hel7o"

"he77o".gsub("7", "l") #=> "hello"

"hello".insert(-1, " dude")  #=> "hello dude"

"hello world".delete("l") #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"
```
### Substring:
```ruby
"hello"[0] #=> "h"

"hello"[0..1] #=> "he"

"hello"[0, 4] #=> "hell"

"hello"[-1] #=> "o"
```
## Escape Characters
```ruby
\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
```
## Interpolation
```ruby
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"
```
## Symbols
```ruby
create (:my_symbol)

"string" == "string" #=> true

"string".object_id == "string".object_id #=> false

:symbol.object_id == :symbol.object_id #=> true
```
## Booleans
```ruby
true
false
nil
```
## Output Commands:
```ruby
puts ''
print ''
```
## Input Commands:
```ruby
gets
```
## Conditional Statement
```ruby
if condition1
  puts 'something'
elsif condition2
  puts 'something2'
else
  puts 'something3'
end
```
## Boolean Logic
```ruby
==

!=

>

<

>=

<=

eql? #=>(checks both the value type and the actual value it holds)

equal? #=>(checks whether both values are the exact same object in memory)

<=> #=>(spaceship operator)

-1 #=>(value on the left is less than the right value)

0 #=>(value on the left is equal than the right value)

1 #=>(value on the left is greater than the right value)

## Logical Operators

&& = and

|| = or

!
```
## Case Statements
```ruby
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

age = 19
unless age < 18
  puts "Get a job."
end
```
## Ternary Operator
```ruby
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
```
## Loops
```ruby
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

for i in 0..5 #=> this is a range
  puts "#{i} zombies incoming!"
end

5.times do
  puts "Hello, world!"
end

5.upto(10) {|num| print "#{num} " } #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " } #=> 10 9 8 7 6 5
```
## Basic Arrays
```ruby
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
```
### Methods
```ruby
Array.new #=> []
Array.new(3) #=> [nil, nil, nil]
Array.new(3, 7) #=> [7, 7, 7]
Array.new(3, true) #=> [true, true, true]
```
### Accessing Elements
```ruby
str_array = ["This", "is", "a", "small", "array"]

str_array[0] #=> "This"
str_array[1] #=> "is"
str_array[4] #=> "array"
str_array[-1] #=> "array"
str_array[-2] #=> "small"

str_array = ["This", "is", "a", "small", "array"]

str_array.first #=> "This"
str_array.first(2) #=> ["This", "is"]
str_array.last(2) #=> ["small", "array"]
```
### Adding and Removing Elements
```ruby
num_array = [1, 2]

num_array.push(3, 4) #=> [1, 2, 3, 4]
num_array << 5 #=> [1, 2, 3, 4, 5]
num_array.pop #=> 5
num_array #=> [1, 2, 3, 4]

num_array = [2, 3, 4]

num_array.unshift(1) #=> [1, 2, 3, 4]
num_array.shift #=> 1
num_array #=> [2, 3, 4]

num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3) #=> [4, 5, 6]
num_array.shift(2) #=> [1, 2]
num_array #=> [3]
```
### Adding and Subtracing Arrays
```ruby
a = [1, 2, 3]
b = [3, 4, 5]

a + b  #=> [1, 2, 3, 3, 4, 5]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]

[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
```
### Basic Methods
```ruby
[].empty? #=> true
[[]].empty? #=> false
[1, 2].empty? #=> false

[1, 2, 3].length #=> 3

[1, 2, 3].reverse #=> [3, 2, 1]

[1, 2, 3].include?(3) #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join #=> "123"
[1, 2, 3].join("-") #=> "1-2-3"
```
## Hashes

### Creating Hashes
```ruby
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

my_hash = Hash.new
my_hash #=> {}

hash = { 9 => "nine", :six => 6 }
```

### Accessing Values
```ruby
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"] #=> "sandals"

shoes["hiking"] #=> nil

shoes.fetch("hiking") #=> KeyError: key not found: "hiking"

shoes.fetch("hiking", "hiking boots") #=> "hiking boots"
```

### Adding and Changing Data
```ruby
shoes["fall"] = "sneakers"

shoes #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

shoes["summer"] = "flip-flops"
shoes #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
```

### Removing Data
```ruby
shoes.delete("summer") #=> "flip-flops"
shoes #=> {"winter"=>"boots", "fall"=>"sneakers"}
```

### Methods
```ruby
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys #=> ["Infinite Jest", "Into the Wild"]
books.values #=> ["David Foster Wallace", "Jon Krakauer"]
```

### Merging Two Hashes
```ruby
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2) #=> { "a" => 100, "b" => 254, "c" => 300 }
```

### Symbols as Hash Keys
```ruby
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford] #=> "Mustang"
japanese_cars[:honda] #=> "Accord"
```

## Methods

### Built-in Methods
```ruby
"anything".reverse
puts "anything" #=> anything
```

### Creating a Method
```ruby
def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
```

### Method Names (Valid)
```ruby
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid
```

### Parameters and Arguments
```ruby
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!
```

#### Default Parameters
```ruby
def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
```

### What Methods Return
```ruby
def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
```

### Predicate Methods
```ruby
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15) #=> true
```

### Bang Methods
```ruby
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"
```

## Debugging

### Reading the Stack Trace

When your Ruby program crashes after encountering a runtime error or exception, it will produce a wall of text known as a stack trace that is then output in your terminal.

### Debugging with puts

```ruby
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split
  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

#=> false
```

### Debugging with Pry-byebug

```ruby
require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")
```

### How to Start Debugging

1. The program encounters an error and won’t run. For example, a typo may cause a syntax error to be raised that causes the program to crash. In this case, Ruby provides a stack trace.

2. The program runs but does not work the way you expect. For example, you expect a method to return a 2, but it actually returns 6 when you run it. In this case, there is no stack trace.

## Basic Enumerable Methods

### Life Before Enumerables

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]
```

### The each Method
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]
```

### The each_with_index Method
```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]
```

### The map Method
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
```

### The select Method
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

invited_list
 #=> ["Sharon", "Leo", "Leila", "Arun"]
```

### The reduce Method
```ruby
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

sum
#=> 26
```

### Bang Methods
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
```

### Return Values of Enumerables
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends
#=> ["Sharon", "Leo", "Leila", "Arun"]
```

## Predicate Enumerable Methods

### The include? Method
```ruby
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false
```

### The any? Method
```ruby
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false
```

### The all? Method
```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false
```

### The none? Method
```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false
```
