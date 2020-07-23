---
title: Command Line Arguments
date: 8th May, 2020 18:00:00
parent: /toc/section-two/
tags:
 - cmd
 - arguments
description: Command Line Arguments in Python
permalink: /toc/section-two/cmd-args/
prev_link: /toc/section-two/naming-conventions/
# next_link: /toc/section-two/section-three/
---

# Command Line Arguments in Ruby

{% include util/quote.html
    quote="The only real difficulties in programming are cache invalidation and naming things."
    quote_by="Phil Karlton"
%}

{% include util/highlight.html
    text="A naming convention is a set of rules for choosing the character sequence(or simply name) to be used for
          identifiers which denote variables, types, functions, and other entities in source code and documentation."
%}

Most of the naming conventions are taken from [PEP 8 - Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/){:target="_blank"} and is recommended to everyone to write readable, community accepted Python code.

Using a naming conventions has following benefits out of many:

- To reduce the effort needed to read and understand source code.
- To enable code reviews to focus on more important issues than arguing over syntax and naming standards.
- To enable code quality review tools to focus their reporting mainly on significant issues other than syntax
  and style preferences.
- To help improve the productivity among the team by following coding standards and reducing arguments over
  syntax and style.

## Class Name

Class names should normally use the CapWords or PascalCase convention.

```python
class Car:
    ...
```

## Package Name

- Should be in lowercase.
- Should use `snake_case` style i.e all lowercase, multiple words separated by underscore(`_`). Eg: `pdf_parser`.

## Function and Variable Name

- Should use `snake_case` style i.e all lowercase, multiple words separated by underscore(`_`) and must avoid one
  character variable like `a`, `b`, `i` etc.
- Use a leading underscore (`_`) to distinguish between `public` and `private` variables.

  ```python
  age = None # public variable
  _id = 0 # Private variable

  def get_height(self): # public method
  def _get_height_secret(self): # private method
  ```

- A function name should convey what it does. Don't use name as `xyz`, `abc` etc.

- Double leading underscores should be used only to avoid name conflicts with attributes in classes designed to be
  subclassed.

## Function and Method Arguments

- Always use `self` for the first argument to instance methods.
- Always use `cls` for the first argument to class methods.
- If a function argument's name clashes with a reserved keyword, it is generally better to append a single trailing
  underscore rather than use an abbreviation or spelling corruption. Thus, `class_` is better than `clss`. (Perhaps
  better is to avoid such clashes by using a synonym like `klass` for `class`)

## Constants

Constants are usually defined on a module level and written in all capital letters with underscores separating
words. Examples: `MAX_OVERFLOW` and `TOTAL`.

## Underscore Conventions

### Single Underscore (_)

As per convention, a single standalone underscore is sometimes used as a name to indicate that a variable is
temporary or insignificant.

```shell
>>> for _ in range(10):
...     print('Welcome Python!')
```

### Single Leading Underscore (_var)

The underscore prefix is meant as a hint to another programmer that a variable or method starting with a single
underscore is intended for internal use.

```shell
class Person:
    def __init__(self):
        self.name = 'Python'
        self._age = 33

>>> p = Person()
>>> p.name
Python
>>> p._age
33
```

### Double Leading Underscore (__var)

The name with double leading underscore has specific meaning to the interpreter. Python mangles these names and it
is used to avoid name clashes with names defined by the subclasses.

```shell
class Person:
    def __init__(self):
        self.name = 'Python'
        self._age = 30
        self.__id = 1000

>>> p = Person()
>>> dir(p)
['_Person__id', ..., '_age', 'name']
>>> p.name
Python
>>> p._age
30
>>> p.__id
AttributeError: 'Person' object has no attribute '__id'
>>> p._Person__id
1000
```

From the above list of object’s attributes, we can see `self.name` and `self._age` appears unchanged and behaves the
same way.

However, `__id` is mangled to `_Person__id`. This is the name mangling that the Python interpreter applies. It does this to protect the variable from getting overridden in subclasses.

Now if we create a subclass of Person, say Employee we can’t easily override Person’s `__id` variable.

```shell
class Employee(Person):
    def __init__(self):
        Person.__init__(self)
        self.__id = 1001

>>> emp = Employee()
>>> dir(emp)
['_Person__id', '_Employee__id', ..., '_age', 'name' ]
>>> emp.__id
AttributeError: 'Employee' object has no attribute '__id'
>>> emp._Person__id
1000
>>> emp._Employee__id
1001
```

### Single Trailing Underscore (var_)

Single trailing underscore naming convention is used to avoid conflicts with Python keywords.

```shell
# wrong
>>> def method(name, class='Classname'):
SyntaxError: "invalid syntax"

# correct
>>> def method(name, class_='Classname'):
...     pass
```

### Double Leading and Trailing Underscore: __var__

Names that have leading and trailing double underscores re reserved for special use like the `__init__`
method for object constructors, or `__call__` method to make object callable. These methods are known as `"dunder"`
methods.

As far as one’s concerned, this is just a convention, a way for the Python system to use names that won’t conflict
with user-defined names.

```shell
class Person:
    def __init__(self):
        self.__name__ = 'Python'

>>> Person().__name__
Python
```

Check this nice blog post on [Naming with Underscores in Python](https://medium.com/python-features/naming-conventions-with-underscores-in-python-791251ac7097){:target="_blank"} in more detail.
