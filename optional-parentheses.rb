name = "Josh"

def name
  "John"
end

p name # => "Josh"
p name() # => "John"

# parentheses are optional when calling a method unless that method has the same name as a variable