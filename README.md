# Ruby lessons by The Odin Project => https://www.theodinproject.com/paths/full-stack-ruby-on-rails

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
## Substring:
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
## Methods
```ruby
Array.new #=> []
Array.new(3) #=> [nil, nil, nil]
Array.new(3, 7) #=> [7, 7, 7]
Array.new(3, true) #=> [true, true, true]
```
## Accessing Elements
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
## Adding and Removing Elements
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
## Adding and Subtracing Arrays
```ruby
a = [1, 2, 3]
b = [3, 4, 5]

a + b  #=> [1, 2, 3, 3, 4, 5]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]

[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
```
## Basic Methods
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
