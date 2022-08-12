# Debugging

## Reading the Stack Trace

When your Ruby program crashes after encountering a runtime error or exception, it will produce a wall of text known as a stack trace that is then output in your terminal.

## Debugging with puts

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

## Debugging with Pry-byebug

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

## How to Start Debugging

1. The program encounters an error and won’t run. For example, a typo may cause a syntax error to be raised that causes the program to crash. In this case, Ruby provides a stack trace.

2. The program runs but does not work the way you expect. For example, you expect a method to return a 2, but it actually returns 6 when you run it. In this case, there is no stack trace.
