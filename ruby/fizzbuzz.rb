def fizz_buzz(num)

	if (num%3).zero? && (num%5).zero?
		val = "fizzbuzz"
	elsif (num%3).zero?
		val = "fizz"
	elsif (num%5).zero?
		val = "buzz"
	else
		val = num
	end
  val
end

fizz_buzz(10)
fizz_buzz(6)
fizz_buzz(15)
fizz_buzz(4)


# markdown
```ruby
```