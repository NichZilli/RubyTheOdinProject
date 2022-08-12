# Methods

## Built-in Methods
```ruby
"anything".reverse
puts "anything" #=> anything
```

## Creating a Method
```ruby
def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
```

## Method Names (Valid)
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

## Parameters and Arguments
```ruby
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!
```

### Default Parameters
```ruby
def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
```

## What Methods Return
```ruby
def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
```

## Predicate Methods
```ruby
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15) #=> true
```

## Bang Methods
```ruby
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"
```
