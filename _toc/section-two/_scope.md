---
title: Scope
date: 26th April, 2020 8:00:00
parent: /toc/section-two/
tags:
  - scope
description: Scope
permalink: /toc/section-two/scope/
prev_link: /toc/section-two/getting-input/
---

# Scope in Ruby

In a very simple meaning, scope refers to the reach or visibility of something during the program. It
rules. We'll be talking chiefly about two types: global and local variables.


```ruby
puts "Enter your name: "
name = gets.chomp
puts "Hello #{name}, how are you"

# output
Enter your name:
RubyGuru
Hello, RubyGuru, how are you
```

__NOTE:__ The reason for using `chomp` after `gets` is that `gets` will read the data entered by
user and store into variable `name` along with new line char `\n`. The method `chomp` will remove
the trailing new line char and store only entered data into `name`.

```ruby
puts "Enter your name: "
name = gets
puts "Hello #{name}, how are you"

# output
Enter your name:
RubyGuru
Hello, RubyGuru
, how are you     # new line effect
```

## Extended example

In the following example, I have extended the use of `gets` to accept other details of person
and transforming the data into appropriate variables.

```ruby
print "Enter your name: "
name = gets.chomp
print "Enter your age: "
age = gets.to_i
print "Enter your address: "
addr = gets.chomp

puts "Hello, #{name}, how are you"
puts "If I am right, your age is '#{age}'"
puts "And, your address is '#{addr}', right?"

# output
Enter your name: foo
Enter your age: 10
Enter your address: barpak, gorkha, Nepal
Hello, foo, how are you
If I am right, your age is '10'
And, your address is 'barpak, gorkha, Nepal', right?
```

### NOTE

- `to_i` is used to convert the numeric string to integer.
- `print` is used to ask information because `puts` will add new line char and give a
  feeling that you are entering your data in another line.

## Calculator

Let's build a small calculator program in Ruby. Here, we ask user two numbers and then print the
addition of it.

```ruby
print "Enter first number: "
num1 = gets.to_f

print "Enter second number: "
num2 = gets.to_f

puts "#{num1} + #{num2} = #{num1 + num2}"
```

{% include util/show-output.html id="calc" caption="Output" %}
{% include util/output.html id="calc"
    output="Enter first number: 5\nEnter second number: 15\n5.0 + 15.0 = 20.0" lang="ruby" %}
