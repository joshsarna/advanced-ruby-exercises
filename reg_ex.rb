sentence = "A ray of light shone on the rotary blades of the helicopter. The old Romany woman looked up, and her ruby ring glittered in the sunlight."

# find all words beginning with r and ending with y
x = sentence.scan(/\b[rR].*?y\b/)

p x

# try not to read into this one too much
p(/fica/ =~ 'floccinaucinihilipilification ') # => 21

# match characters only at the start of a string or end of a string
p(/^a/ =~ 'abc') # => 0
p(/^b/ =~ 'abc') # => nil
p(/c$/ =~ 'abc') # => 2
p(/b$/ =~ 'abc') # => nil

# use global variables to grab matched strings
/(.)(..)(.)/ =~ 'abcd'
p $0 # => "reg_ex.rb"
p $1 # => "a"
p $2 # => "bc"
p $3 # => "d"