puts "Type code below, and press enter to run."
puts "Enter 'q' to quit."
puts ""
puts "Note: all variables should be defined globally, with '$'"

input = ""

while input != "q"
  input = gets.chomp
  if input != "q"
    eval input
  end
end