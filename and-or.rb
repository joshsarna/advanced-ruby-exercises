x = true
y = false
z = false

if x or y and z
  p "thing 1"
end
# "thing 1" is not printed because 'or' and 'and' follow standard math order of operations rather than acting as gates

if x || y && z
  p "thing 2"
end
# "thing 2" is printed because x is true and the code on the right of the or gates is not evaluated