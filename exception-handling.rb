begin
  x = 1/0
rescue Exception
  x = 0
  p "exception of class #{$!.class}: #{$!}"
end

begin
  x = 2/"hello"
rescue ZeroDivisionError
  # this code is not run because the exception is not of this type
  p "it was a zero division error"
rescue TypeError => e
  x = 0
  p "exception of class #{e.class}: #{e}"
  retry # => this will cause the code in the begin block to run again
else
  # this runs if no exceptions are caused
  p "there were no errors"
ensure
  # this code will run no matter what
  p "so what did we learn?"
end