#### 1. Runaway Loop

- Problem

  - Infinite loop:

 ```ruby
  loop do
    puts 'Just keep printing...'
  end
 ```

    Modify the code so the loop stops after the first iteration.

- My solution:
	- ✅ Insert `break` statement

  ```ruby
  loop do
    puts 'Just keep printing...'
    break
  end
  ```

- Solution notes

  * `break` is nearly always necessary when using `loop` and doesn't require any conditions.
  * When `loop` executes a `break`, it stops iterating immediately and exits the block.

#### 2. Loopception

- Problem

  - Nested loops that loop infinetely:

    ```ruby
    loop do
      puts 'This is the outer loop.'
      
      loop do
        puts 'This is the inner loop.'
      end
    end
    
    puts 'This is outside all loops.'
    ```

    Modify the code so each loop stops after the first iteration.

- ✅ My solution:

  ```ruby
  loop do
    puts 'This is the outer loop.'
    
    loop do
      puts 'This is the inner loop.'
      break
    end
    break
  end
  
  puts 'This is outside all loops.'
  ```

  

#### 3. Control the loop

- Problem

  - Modify the following loop so it iterates 5 times instead of just once.

    ```ruby
    iterations = 1
    loop do
      puts "Number of iterations = #{iterations}"
      break
    end
    ```

- My solution

  - ✅ Increment `iterations` by 1 for each loop, add `if` condition to `break` statement:

    ```ruby
    iterations = 1
    loop do
      puts "Number of iterations = #{iterations}"
      iterations += 1
      break if iterations > 5
    end
    ```

  - **NAILED IT!**

- Further exploration:

  - If the `break` statement is moved up one line so it runs before `iterations` is updated, what need to be changed?

- My solution

  - ✅ Must `break if iterations > 4` 

    ```ruby
    iterations = 1
    loop do
      puts "Number of iterations = #{iterations}"
      break if iterations > 4
      iterations += 1
    end
    ```

    

#### 4. Loop on Command

- Problem

  - Modify the code below so the loop stops iterating when the user inputs 'yes'.

    ```ruby
    loop do
      puts 'Should I stop looping?'
      answer = gets.chomp
    end
    ```

- My solution

  - ✅ Insert conditional break statement:

    ```ruby
    loop do  
      puts 'Should I stop looping?'  
      answer = gets.chomp
      break if answer.downcase == 'yes'
    end
    ```

#### 5. Say Hello

- Problem

  - Modify the code so `"Hello!"` is printed 5 times

    ```ruby
    say_hello = true
    
    while say_hello
      puts 'Hello!'
      say_hello = false
    end
    ```

- My solution

  - 🟢 Add counter and conditional statement

    ```ruby
    say_hello = true
    i = 1
    
    while say_hello
      puts 'Hello!'
      i += 1
      if i > 5
    	  say_hello = false
      end
    end
    ```

    

- Solution

  - Counter and conditional, but saved two lines

    ```ruby
    say_hello = true
    count = 0
    
    while say_hello
      puts 'Hello!'
      count += 1
    	say_hello = false if i == 5
    end
    ```

    - Added that `if` condition could also be written the way I did

  - **NB! A better way to do it is using `#times`:**

    ```ruby
    5.times do
      puts 'Hello!'
    end
    ```

    - Important to understand how these loops work, though.

#### 6. Print While

- Problem

  - Using a `while` loop, print 5 random numbers between 0 and 99. Example of how to begin:

    ```Ru
    numbers = []
    
    while <condition>
    	# ...
    end
    ```

- ✅ My solution

  - Looked at the hint and then looked up `Kernel#rand` in the documentation

  ```ruby
  numbers = []
  
  while numbers.length < 5
    numbers << rand(100)
  end
  ```

  - Without the starting example I would have used a counter and printed the numbers one by one:

    ```ruby
    i = 0
    while i < 5
      puts rand(100)
      i += 1
    end
    ```

    

- Solution

  - Used `numbers.size`, otherwise the same

#### 7. Count Up

- Problem: The following code outputs a countdown from 10 to 1. Modify it so that it counts from 1 to 10 instead

  ```ruby
  count = 10
  
  until count == 0
    puts count
    count -= 1
  end
  ```

- My solution

  - ```ruby
    count = 1
    
    until count == 11
      puts count
      count += 1
    end
    ```

- Solution

  - Practically the same

    ```Ruby
    count = 0
    
    until count > 10
      puts count
      count += 1
    end
    ```

  - `until` iterates until a condition *evaluates as true*.

  

#### 8. Print Until

Given the array of several numbers below, use an `until` loop to print each number.

```rub
numbers = [7, 9, 13, 25, 18]
```

- 🟢📩  My solution

  - Use `#shift` which returns the first value of the array and also removes it.

    ```ruby
    until numbers == []
      puts numbers.shift
    end
    ```

- Solution

  - Multiple ways to do it.

    ```ruby
    count == 0
    
    until count == numbers.size
      puts numbers[count]
      count += 1
    end
    ```

    

#### 9. That's Odd

Modify the code so that it only outputs `i` if `i` is an odd number.

```ruby
for i in 1..100
  puts i
end
```

- 🟢My solution

  - Use `%` and conditional statement

    ```ruby
    for i in 1..100
      if i % 2 != 0
        puts i
      end
    end
    ```

  - Modified

    ```ruby
    for i in 1..100
      puts i if i % 2 != 0
    end
    ```

- Solution

  - Use `#odd?` method

    ```ruby
    for i in 1..100
      puts i if i.odd?
    end
    ```

    



