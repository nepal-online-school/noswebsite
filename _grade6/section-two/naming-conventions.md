---
title: Naming Conventions
date: 8th May, 2020 17:00:00
parent: /toc/section-two/
tags:
 - naming conventions
description: Naming conventions in Ruby
permalink: /toc/section-two/naming-conventions/
prev_link: /toc/section-two/scope/
next_link: /toc/section-two/cmd-args/
# comments: true
---

# Naming conventions in Ruby

{% include util/quote.html
    quote="The only real difficulties in programming are cache invalidation and naming things."
    quote_by="Phil Karlton"
%}

A naming convention is a set of rules for choosing the character sequence(or simply name) to be used for
identifiers which denote variables, types, functions, and other entities in source code and documentation.
[(Source)](https://en.wikipedia.org/wiki/Naming_convention_(programming)){:target="_blank"}

Using a naming convention has following benefits:

- To reduce the effort needed to read and understand source code.
- To enable code reviews to focus on more important issues than arguing over syntax and naming standards
- To enable code quality review tools to focus their reporting mainly on significant issues other than syntax
  and style preferences.
- To help improve the productivity among the team by following coding standards and reducing arguments over
  syntax and style.

## Popular naming conventions in Ruby Community

Following are the few naming conventions one should know and taken from
[Ruby community style guide]([Ruby Style Guide naming convention.](https://rubystyle.guide/#naming-conventions){:target="_blank"}).
These rules are set to make Ruby code more readable, acceptable in the community.

{% include util/note.html
    note="Although these rules are not mandatory but by following these conventions you are helping others
to understand your code quickly and in an efficient manner."
%}

### CamelCase for Classes

Use CamelCase for classes and modules. (Keep acronyms like HTTP, RFC, XML uppercase).

```ruby
# bad class names
Someclass
Some_Class
SomeXml
XmlSomething

# good class names
SomeClass
SomeXML
XMLSomething
```

### Snake Case for Symbols, Methods and Variables

Use snake_case for symbols, methods and variables

```ruby
# bad names
:'some symbol'
:SomeSymbol
:someSymbol
someVar = 5
someMethod
SomeMethod

# good names
:some_symbol
some_var = 5
some_method
```

### Snake Case for file and directory name

Use snake_case for naming files and directories

```ruby
# bad names
someDir/someFile.rb
SomeDir/SomeFile.rb
Some_Dir/Some_File.rb

# good names
some_dir/some_file.rb
```

### Screaming Snake Case for Constants

Use SCREAMING_SNAKE_CASE for other constants (those that don’t refer to classes and modules).

```ruby
# bad name
SomeConst = 5

# good name
SOME_CONST = 5
```

### Identifiers with a Numeric Suffix

Do not separate numbers from letters on symbols, methods and variables.

```ruby
# bad names
:some_sym_1
some_var_1 = 1
var_10 = 10
some_method_1

# good names
:some_sym1
some_var1 = 1
var10 = 10
some_method1
```

### One Class per File

Aim to have just a single class/module per source file. Name the file name as the class/module, but replacing
CamelCase with snake_case.

### Appropriate suffix for method names

#### Question mark to method returning boolean value

The names of predicate methods (methods that return a boolean value) should end in a question mark (`?`) (i.e.
Array#empty?). Methods that don’t return a boolean, shouldn’t end in a question mark.

```ruby
# bad
def even(value)
end

# good
def even?(value)
end
```

#### Dangerous Method Suffix

The names of potentially dangerous methods (i.e. methods that modify self or the arguments, exit! (doesn’t run
the finalizers like exit does), etc) should end with an exclamation mark if there exists a safe version of that
dangerous method.

```ruby
# bad - there is no matching 'safe' method
class Person
  def update!
  end
end

# good
class Person
  def update
  end
end

# good
class Person
  def update!
  end

  def update
  end
end
```

Check more [here](https://rubystyle.guide/#dangerous-method-bang){:target="_blank"}.

### Avoid predicate Methods prefix

Avoid prefixing predicate methods with the auxiliary verbs such as is, does, or can. These words are redundant
and inconsistent with the style of boolean methods in the Ruby core library, such as `empty?` and `include?`.

```ruby
# bad
def is_tall?
end

def can_play_basketball?
end

def does_like_candy?
end

# good
def tall?
end

def basketball_player?
end

def likes_candy?
end
```

### Unused Variables Prefix

Prefix with `_` unused block parameters and local variables. It’s also acceptable to use just `_` (although
it’s a bit less descriptive). This convention is recognized by the Ruby interpreter and tools like RuboCop and
will suppress their unused variable warnings.

```ruby
# bad
result = hash.map { |k, v| v + 1 }

def something(x)
  unused_var, used_var = something_else(x)
end

# good
result = hash.map { |_k, v| v + 1 }

def something(x)
  _unused_var, used_var = something_else(x)
end

result = hash.map { |_, v| v + 1 }

def something(x)
  _, used_var = something_else(x)
end
```
