---
title: Style Guide
date: 4th May, 2020 18:00:00
parent: /toc/section-two/
tags:
 - styleguide
 - pep8
description: Python Style Guide
permalink: /toc/section-two/style-guide/
prev_link: /toc/section-two/datatypes/
# next_link: /toc/section-two/variables-constants/
---

# Style Guide in Python

{% include util/quote.html
    quote="The only real difficulties in programming are cache invalidation and naming things."
    quote_by="Phil Karlton"
%}

{% include util/highlight.html
    text="A style guide in programming is a set of rules defined in how one should do coding like choosing a particular naming convention, using max length, using particular character for line breaks etc."
%}

Most of the style guide details are taken from [PEP 8 - Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/){:target="_blank"} and recommended to everyone to write readable, community accepted Python code.

Using a style guide has following benefits out of many:

- To reduce the effort needed to read and understand source code.
- To enable code reviews to focus on more important issues than arguing over syntax and naming standards.
- To enable code quality review tools to focus their reporting mainly on significant issues other than syntax
  and style preferences.
- To help improve the productivity among the team by following coding standards and reducing arguments over
  syntax and style.

## Code Layout

### Indentation

Indentation in Python is used to determine the grouping of statements as Python doesn't has explicit ending
identifier like `end` in `Ruby` or braces like `}` in `C`. Using invalid indentation results in error which sometime
get difficult to find or track.

Following are few guidelines set by PEP 8 style guide:

- Use 4 spaces per indentation level.
- Spaces are the preferred indentation method.
- Python 3 disallows mixing the use of tabs and spaces for indentation.

### Maximum Line Length

Limit all lines to a maximum of 79 characters.

### Line break before binary operator

  It is recommended to break line before any binary operator.

  ```python
  # Wrong:
  # operators sit far away from their operands
  income = (gross_wages +
            taxable_interest +
            (dividends - qualified_dividends) -
            ira_deduction -
            student_loan_interest)

  # Correct:
  # easy to match operators with operands
  income = (gross_wages
            + taxable_interest
            + (dividends - qualified_dividends)
            - ira_deduction
            - student_loan_interest)
  ```

### Blank Lines

- Surround top-level function and class definitions with two blank lines.
- Method definitions inside a class are surrounded by a single blank line.
- Extra blank lines may be used to separate groups of related functions. Blank lines may be omitted between a bunch of related one-liners.
- Use blank lines in functions, sparingly, to indicate logical sections.

### Imports

- Wildcard imports (`from <module> import *`) should be avoided, as they make it unclear which names are present in
  the namespace.

- Imports should usually be on separate lines:

  ```python
  # Wrong:
  import sys, os

  # Correct:
  import os
  import sys

  # Correct:
  from subprocess import Popen, PIPE
  ```

- Imports are always put at the top of the file, just after any module comments and docstrings, and before module
  globals and constants.

- Imports should be grouped in the following order:

  - Standard library imports.
  - Related third party imports.
  - Local application/library specific imports.

  You should put a blank line between each group of imports.

- Absolute imports are recommended, as they are usually more readable and tend to be better behaved.

  ```python
  import mypkg.sibling
  from mypkg import sibling
  from mypkg.sibling import example
  ```

- When importing a class from a class-containing module,

  ```python
  from myclass import MyClass
  from foo.bar.yourclass import YourClass
  ```

  If this spelling causes local name clashes, then spell them explicitly:

  ```python
  import myclass
  import foo.bar.yourclass
  ```

  and use `myclass.MyClass` and `foo.bar.yourclass.YourClass`.

### String Quotes

In Python, single-quoted strings and double-quoted strings are the same. This PEP does not make a recommendation for
this.

### Whitespace

Avoid extraneous whitespace in situations like:

```python
# Wrong:
spam( ham[ 1 ], { eggs: 2 } )

# Correct:
spam(ham[1], {eggs: 2})

# ----------------------------------------------

# Wrong:
bar = (0, )

# Correct:
foo = (0,)

# ----------------------------------------------

# Wrong:
if x == 4 : print x , y ; x , y = y , x

# Correct:
if x == 4: print x, y; x, y = y, x

# ----------------------------------------------

# Wrong:
ham[lower + offset:upper + offset]
ham[1: 9], ham[1 :9], ham[1:9 :3]
ham[lower : : upper]
ham[ : upper]

# Correct:
ham[1:9], ham[1:9:3], ham[:9:3], ham[1::3], ham[1:9:]
ham[lower:upper], ham[lower:upper:], ham[lower::step]
ham[lower+offset : upper+offset]
ham[: upper_fn(x) : step_fn(x)], ham[:: step_fn(x)]
ham[lower + offset : upper + offset]

# ----------------------------------------------

# Wrong:
spam (1)

# Correct:
spam(1)

# ----------------------------------------------

# Wrong:
dct ['key'] = lst [index]

# Correct:
dct['key'] = lst[index]

# ----------------------------------------------

# Wrong:
x             = 1
y             = 2
long_variable = 3

# Correct:
x = 1
y = 2
long_variable = 3

# ----------------------------------------------

# Wrong:
def munge(input:AnyStr): ...
def munge()->PosInt: ...

# Correct:
def munge(input: AnyStr): ...
def munge() -> PosInt: ...

# ----------------------------------------------

# Wrong:
def complex(real, imag = 0.0):
    return magic(r = real, i = imag)

# Correct:
def complex(real, imag=0.0):
    return magic(r=real, i=imag)

# ----------------------------------------------

# Wrong:
if foo == 'blah': do_blah_thing()
do_one(); do_two(); do_three()

# Correct:
if foo == 'blah':
    do_blah_thing()
do_one()
do_two()
do_three()
```

## Naming Conventions

### Class Name

Class names should normally use the CapWords or PascalCase convention.

```python
class Car:
    ...
```

### Function and Variable Name

- Should use `snake_case` style i.e all lowercase, multiple words separated by underscore(`_`) and must avoid one
  character variable like `a`, `b`, `i` etc.
- Use a leading underscore (`_`) to distinguish between `public` and `private` variables.

  ```python
  age = None # public variable
  _id = 0 # Private variable

  def get_height(self): # public method
  def _get_height_secret(self): # private method
  ```

- Double leading underscores should be used only to avoid name conflicts with attributes in classes designed to be
  subclassed.

### Function and Method Arguments

- Always use `self` for the first argument to instance methods.
- Always use `cls` for the first argument to class methods.
- If a function argument's name clashes with a reserved keyword, it is generally better to append a single trailing
  underscore rather than use an abbreviation or spelling corruption. Thus, `class_` is better than `clss`. (Perhaps
  better is to avoid such clashes by using a synonym like `klass` for `class`)

### Constants

Constants are usually defined on a module level and written in all capital letters with underscores separating
words. Examples: `MAX_OVERFLOW` and `TOTAL`.

## Programming Recommendations

- Comparisons to singletons like None should always be done with is or is not, never the equality operators.

  ```python
  # Wrong:
  if not foo is None:

  # Correct:
  if foo is not None:
  ```

- When implementing ordering operations with rich comparisons, it is best to implement all six operations (`__eq__, __ne__, __lt__, __le__, __gt__, __ge__`) rather than relying on other code to only exercise a particular comparison.

To minimize the effort involved, the `functools.total_ordering()` decorator provides a tool to generate missing comparison methods.

- Always use a def statement instead of an assignment statement that binds a lambda expression directly to an
  identifier:

  ```python
  # Wrong:
  f = lambda x: 2*x

  # Correct:
  def f(x): return 2*x
  ```

- Use `raise ValueError('message')` instead of the older form `raise ValueError, 'message'`.

  ```python
  try:
    process_data()
  except Exception as exc:
      raise DataProcessingFailedError(str(exc))
  ```

- When catching exceptions, mention specific exceptions whenever possible instead of using a bare `except:` clause:

  ```python
  try:
    import platform_specific_module
  except ImportError:
      platform_specific_module = None
  ```

- Be consistent in return statements. Either all return statements in a function should return an expression, or
  none of them should. If any return statement returns an expression, any return statements where no value is
  returned should explicitly state this as `return None`.

  ```python
  # Wrong:
  def foo(x):
      if x >= 0:
          return math.sqrt(x)

  def bar(x):
      if x < 0:
          return
      return math.sqrt(x)

  # Correct:
  def foo(x):
      if x >= 0:
          return math.sqrt(x)
      else:
          return None

  def bar(x):
      if x < 0:
          return None
      return math.sqrt(x)
  ```

- Use `.startswith()` and `.endswith()` instead of string slicing to check for prefixes or suffixes.

  ```python
  # Wrong:
  if foo[:3] == 'bar':

  # Correct:
  if foo.startswith('bar'):
  ```

- Object type comparisons should always use isinstance() instead of comparing types directly:

  ```python
  # Wrong:
  if type(obj) is type(1):

  # Correct:
  if isinstance(obj, int):
  ```

- For sequences, (strings, lists, tuples), use the fact that empty sequences are false:

  ```python
  # Wrong:
  if len(seq):
  if not len(seq):

  # Correct:
  if not seq:
  if seq:
  ```

- Don't compare boolean values to True or False using `==`:

  ```python
  # Wrong:
  if greeting == True:

  # Correct:
  if greeting:
  ```

- Use of the flow control statements `return/break/continue` within the finally suite of a `try...finally`, where
  the flow control statement would jump outside the finally suite, is discouraged. This is because such statements
  will implicitly cancel any active exception that is propagating through the finally suite:
