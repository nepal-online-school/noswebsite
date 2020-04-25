---
title: Features of Ruby
date: 20th April, 2020 02:00:00
parent: /toc/section-one/
tags:
 - features
description: Features of Ruby Language
permalink: /toc/section-one/features/
prev_link: /toc/section-one/history/
next_link: /toc/section-one/hello-world/
---

# Features of Ruby

I have listed few prominent features of Ruby that one should aware.

## Nearly Pure Object Oriented

Almost everything is Object making it purely Object Oriented programming language. Each and every value is an   object. Every object has a class and every class has a super class. Every object has their properties and actions.

## Dynamic typing and Duck typing

Ruby is a dynamic programming language and its programs are not compiled. The type of any datatype is determined at
runtime.

Ruby variables are loosely typed language which means any variable can hold any type of object. When a method is
called on an object, Ruby only looks up at the name irrespective of the type of object. This is duck typing. It
allows you to make classes that pretend to be other classes.

>> If it walks like a duck and it quacks like a duck, then it must be a duck"—to determine if an object can be used
>> for a particular purpose. With normal typing, suitability is determined by an object’s type. In duck typing, an
>> object’s suitability is determined by the presence of certain methods and properties, rather than the type of the
>> object itself.

## Flexibility

Ruby is a flexible language. It allows you to easily remove, redefine or add existing parts to it. It allows its
users to freely alter its parts as they wish. Eg: One can open a Integer class and redefine the implementation of `+`
into multiplication operation.

## Metaprogramming

Ruby allows you to operate on the programs as the data. It means that a program can be designed to read, generate,
analyze or transform other programs, and even modify itself while running. In some cases, this allows programmers to
minimize the number of lines of code to express a solution, in turn reducing development time. It also allows
programs greater flexibility to efficiently handle new situations without recompilation.

## Mixins

Ruby has a feature of single inheritance only. Ruby has classes as well as modules. A module has methods but no
instances. Instead, a module can be mixed into a class, which adds the method of that module to the class. It is
similar to inheritance but much more flexible.

## Natural English-like Appearance

The Ruby program prefers English keyword and some punctuation for decoration. It doesn’t need variable declaration. Eg:
```ruby
if 5 > 2 then print "Good" else print "bad" end
```

## Naming Conventions

Ruby defines some naming conventions for its variable, method, constant and class.

- __Constant__: Starts with a capital letter
- __Global variable__: Starts with a dollar sign ($)
- __Instance variable__: Starts with a (`@`) sign
- __Class variable__: Starts with a (`@@`) sign
- __Method name__: Allowed to start with a capital letter

## Default Arguments

A default argument is an argument to a function that a programmer is not required to specify. In most programming
languages, functions may take one or more arguments. Usually, each argument must be specified in full (like in C).

## Special Method Names

Methods are allowed to end with question mark (?) or exclamation mark (!). By convention, methods that answer
questions end with question mark and methods that indicates that method can change the state of the object end with
exclamation mark.

## Statement delimiters

Multiple statements in a single line must contain semi colon in between but not at the end of a line.

## Interactive Ruby Shell (IRB)

It is a REPL(Read, Eval, Print, Loop) for Ruby language. The abbreviation irb comes from the fact that the filename
extension for Ruby is `.rb`, although interactive Ruby files do not have an extension of `.irb`.

The program is launched from a command line and allows the execution of Ruby commands with immediate response,
experimenting in real-time. It features command history, line editing capabilities, and job control, and is able to
communicate directly as a shell script over the Internet and interact with a live server. It was developed by Keiju
Ishitsuka.

## Rubygems

All the packages of Ruby are managed via Rubygems. A gem is nothing but a package.

## Major OS Support

Ruby is available in most of the available OS today including Windows, macOS and Linux.

## Garbage Collection

Ruby support garbage collection of unused objects automatically. Programmers need not to release objects manually.
The strategies of Garbage collection has evolved from Mark & Sweep to Incremental Sweep in Ruby 2.2. More can be
found [here](https://blog.heroku.com/incremental-gc).
