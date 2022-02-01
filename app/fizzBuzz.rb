(1..100).each do |number|
 
  if number % 3 == 0 
      print'FizzBuzz'
  elsif number % 5 == 0 
      print'Buzz'
  elsif number % 15 == 0 
    print 'Fizz'
  else
    print number
    
  end
end
  