---
title: Data Types
date: 23th April, 2020 02:00:00
parent: /toc/section-two/
tags:
 - datatypes
 - number
 - string
 - boolean
 - array
 - hash
 - symbol
 - range
 - nil
description: Data Types in Ruby language
permalink: /toc/section-two/datatypes/
prev_link: /toc/section-two/
next_link: /toc/section-two/naming-conventions
---

# Data Types in Ruby

Data types represents different types of data like text, string, numbers etc. Ruby has several data types and all
data types are based on classes as it is a pure Object-Oriented language.
The following are the basic data types recognized in Ruby:
- Number (Class: `Numeric`)
  - Integer (Class: `Integer`)
  - Float (Class: `Float`)
- String (Class: `String`)
- Boolean (Class: `TrueClass` or `FalseClass` )
- Array (Class: `Array`)
- Hash  (Class: `Hash`)
- Symbol (Class: `Symbol`)
- Range (Class: `Range`)
- Nil (Class: `NilClass`)

### Try yourself

```ruby
puts "I am string".class
puts 10.class
puts 14.3.class
puts true.class
puts false.class
puts ["I am string", 10, 14.3, true, false].class
puts({ num: 10, float: 14.3, bool: true}.class)
puts :foo.class
puts (1..10).class
puts nil.class
```

## Numbers

A number is defined as a sequence of digits, and may contain dot(`.`) as a decimal mark.
Optionally the user can use the underscore(`_`) as a separator to _make number more readable_.
There are two different kinds of numbers i.e integer and float.

{% include util/note.html
    note="Before Ruby v2.4.0, integer numbers had two categories, Fixnum and Bignum. From v2.4.0, both are
now classified under one class i.e Integer."
    source="https://bugs.ruby-lang.org/issues/12005"
%}

#### Basic Operations

We can perform many basic operations with numbers like addition, subtraction, multiplication, division etc.

```ruby
# Integer
5 + 5 # output: 10
20 - 10 # output: 10
20 * 5 # output: 100
20 / 5 # output: 4

# Float
1.5 + 2.5 # output: 4.0
5.5 - 2.5 # output: 3.0
2.5 * 2 # output: 5.0
10 / 2.5 # output: 4.0

# Surprise!
15/2 # output: 7
15.0/2 # output: 7.5
15.fdiv(2) # output: 7.5
```

__NOTE__: `#` is used for the comment purpose.

We will see about number details operations in some other section.

## String

A string is a sequence of letters/characters that represent a word or a sentence.
Strings are defined by enclosing a text within a single (`'`) or double (`"`) quotes.
You can use both double quotes and single quotes to create strings. Strings are objects of class String.

### Double vs Single quote string

- Double quoted string allow substitution or string interpolation while single quote doesn't

  ```ruby
  name = "Ruby" # defined some value name
  puts "My name is #{name}" # output: My name is Ruby
  puts 'My name is #{name}' # output: My name is #{name}
  # Single quoted string didn't substituted value of 'name'
  ```

- Double quote string allow escape sequences while single quote do not.

  ```ruby
  puts "\n" # output: new line is shown
  puts '\n' # output: \n
  ```

### Best Practice

As most of the Ruby Linters suggest, use single quote for defining usual string and use
double quote in the case of interpolation/escaping sequences.

## Boolean

In Ruby the boolean data type can have one of the two values: `true` or `false`.
`true` is an instance of `TrueClass` and `false` is an instance of `FalseClass`.

### AND, OR and NOT

- If we use `AND` with any two operands and if both of them are `true`, then the result will be `true`. Otherwise,
  it will be `false`. `AND can be understood as both ( first and second both )`.
- If we use `OR` and if at least one of the two operands is `true`, then the result will be `true`. The result
  will be `false` if both the operands are `false`. `OR can be understood as either ( first or second any )`.
- You can understand `NOT` by thinking that it will do the opposite. This can be understood as described below.
  - not false is true
  - not true is false

### &&, || and !

In Ruby there are three main boolean operators:

- `&&` which represents "AND"
  For an `&&` ("and") to evaluate to `true`, both operand values must evaluate to `true`. For example:

  ```ruby
  true && true # output: true
  true && false # output: false
  ```

- `||` which represents "OR"
  For an `||` ("or") to evaluate to `true`, only one operand value must evaluate to `true`. For example:

  ```ruby
  false || true # output: true
  ```

- `!`(pronounced as _bang_ operator) which represents "NOT".
  A `!` ("not") reverses the logical state of its operand i.e if a condition is `true`, then `!` will
  make it `false`; if it is `false`, then `!` will make it `true`. For example:

  ```ruby
  !true # output: false
  !false # output: true
  ```

### More Example

  ```ruby
  x = 10
  y = 20
  puts x == 10 && y == 20
  puts x == 3 || y == 20
  puts x == 3 && y == 20
  puts x == 3 || y == 2
  puts !x # output: false as using ! operator to non-zero result to false
  ```

  {% include util/show-output.html id="and_or_not" caption="Output" %}
  {% include util/output.html id="and_or_not" output="true\ntrue\nfalse\nfalse\nfalse" lang="ruby" %}

### Best Practice

Use `&&/||` for boolean expressions, `and/or` for control flow. [(source)](https://github.com/rubocop-hq/ruby-style-guide#andor)

```ruby
# boolean expression
if some_condition && some_other_condition
  do_something
end

# control flow
document.saved? or document.save!
```

## Array

Ruby arrays are ordered collections of objects. They can hold objects like integer, number, hash, string, symbol
or any other array.

An array is a list of variables enclosed in square brackets and separated by commas.

The two common ways to create arrays are:

- Using square brackets

  ```ruby
  fruits = ['mango', 'banana', 'apple'] # output: fruits array with three fruits name
  ```

- Using `Array.new`

  ```ruby
  numbers = Array.new(3, 0) # output: numbers array with 3 elements initialized to 0
  ```

### Accessing element in Array

You can access array element by using its index value.

```ruby
fruits = ['mango', 'banana', 'apple']
puts fruits[0] # output: 'mango'
```

We will explore more about `Array` in later section.

## Hash

A `Hash` is a collection of key-value pairs data. These key-value pairs provide a useful way to store
and access data. Hashes are often used to hold data that are related, such as the information about a user.

You define a hash like:

```ruby
user = { "first_name" => "Foo", "last_name" => "Bar" }
# or another JSON like syntax
user = { first_name: "Foo", last_name: "Bar" }
```

### Accessing element in Hash

You can retrieve values from a Hash using `[]` operator using `key` inside it.

```ruby
user = { first_name: "Foo", last_name: "Bar" }
puts user[:first_name] # output: Foo
```

We will explore more about `Hash` in later section.

## Symbol

Symbol is similar to String but symbol is immutable i.e it's state can’t be changed once created.
_It will always has same size in the memory._

### Better for performance

When you create two String objects with the same value, those two objects are treated as two different objects.
However, when you create two Symbols, both will always use the same object. See below results.

```ruby
# string
"foo".object_id
=> 70288511587360
"foo".object_id
=> 70288504327720

# symbol
:foo.object_id
=> 539368
:philip.object_id
=> 539368
```

### Best practice

Use symbol to identify something since it refer to only one object. Best use case would be to be used as the key
of a Hash.

## Range

Ruby ranges describes a set of values with a beginning and an end. Values of a range can be numbers, characters,
strings or objects. It provides the flexibility to the code and reduce the size of code.

It's one of common use case is to define a range of values for array.

There are two basic form:

- Using `start..end`(two dots): Include the end's value as part of object
- Using `start...end`(three dots): Exclude the end's value as part of object

```ruby
(1..10).to_a # output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
(1...10).to_a # output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

## Nil

`nil` is a special Ruby object used to represent an "empty" or "default" value.
It’s also a "falsy" value, meaning that it behaves like `false` when used in a conditional statement.
`nil` is the object of `NilClass`.

__NOTE__: There is ONLY one nil object, with an `object_id` of 8 in 64-bit machine(4 in 32-bit). Hence, `nil` is
special.
