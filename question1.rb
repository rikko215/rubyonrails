def fizz_buzz
  num = 0
  while (num <= 100) do
    if (num%3 == 0) && (num%5 == 0) then
      puts "FizzBuzz"
      elsif (num%3 == 0) then
      puts "fizz"
      elsif (num%5 == 0) then
      puts "buzz"
    else
      puts num
    end
    num += 1
  end
end

  fizz_buzz