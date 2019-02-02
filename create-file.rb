f = File.new('fruits.txt', 'w')
f.puts('banana', 'apple', 'grape', 'orange')
f.close

f = File.new('fruits.txt', 'r')
fruit_count = 0
letter_count = 0

while !(f.eof) do
  l = f.getc()
  if l.ord == 10
    fruit_count += 1
  else
    letter_count += 1
  end
end

f.close

p "This file contains #{fruit_count} fruits that require #{letter_count} letters to write."