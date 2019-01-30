def printDay(day)
  case(day)
  when 1 then p "Monday"
  when 2 then p "Tuesday"
  when 3 then p "Wednesday"
  when 4 then p "Thursday"
  when 5 then p "Friday"
  when 6 then p "Saturday"
  when 7 then p "Sunday"
  else p "timeless"
  end
end

printDay(1) # => "Monday"
printDay(3) # => "Wednesday"
printDay(8) # => "timeless"