When expressions are evaluated, they return something.

# IRB

Sometimes we want to see how code works. Instead of having to build a brand new program (in a file), load up all the libraries, blah, blah, blah, IRB is a quick "laboratory" where we can see how something works. This is usually better than looking at the docs or writing a Stack Overflow post. With just a simple bit of test data we can verify we understand how a line of code is working.

An expression in a programming language is a combination of one or more constants, variables, operators, ... that the programming language interprets (according to its particular rules of precedence and of association) and computes to produce ("to return", in a stateful environment) another value. This process, as for mathematical expressions, is called evaluation.

Evaluation is the process of interpreting an expression, according to rules, to produce a return value.

## The Constant Expression

The constant expression is an expression composed only of constants. Its return value is the same as the constants.

"Mirroring" establishes "I see what you see" and "I can 'follow' your analogies, we can build on this."

We need agreement. Ruby's evaluation of the simple constant expression agrees with ours, and we will build all programming we ever learn from this foundation.

## The Assignment Expression

```Ruby
a = 10
b = 'Hello World'
c = a + b
```

Sometimes, we might want to make a variable name permanent, it can only be assigned ONCE. We do this by writing a "symbolic constant." In Ruby, symbolic constants are written in all caps:

```Ruby
SPEED_OF_LIGHT = 180000
```

## The Variable Lookup Expression

To lookup the value in a variable we simply type it.

```Ruby
age = 32
age #=> 32
```

If you think about it, most of children's education until early elementary school is giving them thousands of assignment expressions so they can participate in the world: "Red," "one," "eleven," "far."

## Data Types

The five scalar data types are:
Integer, Float, Boolean, String, Symbol.

### Identify an Integer
There's a number scale for whole numbers, or Integers (-1, 0, 1, ...). You've created several Integer constants in this module.

### Identify a Float
There's a number scale for Floating point numbers (-0.0001...0....1,000,000). Create Floats the same way you create Integers: simply type them in.

### Identify Boolean Values
The mathematics of expressions made up only of true and false was established by George Boole, an English mathematician. In his honor, the scale of values between true and false are called "Boolean." To use these in Ruby expressions, you just type in true or false

### Identify String Values
You create Strings by surrounding text in "" or ''. We'll only use "" for the time being, though.

Some programming languages make a difference between a single String element (called a char for character) and a collection of chars called a String. Ruby does not. A String of one character is a String just like a String with the text of the US Constitution in it.

### Identify Symbol Values
The last data type we'll discuss is a Symbol. It's like a plain old bare word, but with a : in front. It looks like :i_am_a_symbol. It's a scalar because of the same logic as behind a String.

Adding .class to the end of a scalar value invokes the class method on the variable. The class method asks a piece of data what data type it has.

# Arithmetic Expressions

```Ruby
x = 5
y = 1
x + y #=> 6
```

```Ruby
4 / 14 = 0
4.0 / 14 = 0.28571.....
```

# The Ternary Expression and Logic

```Ruby
likely_to_rain = true
garment = likely_to_rain ? "galoshes" : "sun hat"
```

### Moving Beyond Boolean

Keep in mind that the first term in a ternary statement can also be an expression. It does not have to be true or false (constant expressions) it can be calculated truth; truth calculated by an expression.

Recall arithmetic, recall this statement: 2 > 1 is 2 "greater than" 1? Try putting this expression into IRB: does IRB confirm that it evaluates to true?
```Ruby
garment = 2 > 1 ? "galoshes" : "sun hat"
```
