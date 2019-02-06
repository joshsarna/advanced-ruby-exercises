p eval("1+3")
p "#{1+3}"
eval(
  "def shout
    p 'AAAHHH'
  end
  3.times do
    shout
  end"
)