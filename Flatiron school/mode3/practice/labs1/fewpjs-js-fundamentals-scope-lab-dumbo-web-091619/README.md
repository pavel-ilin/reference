# JavaScript Fundamentals: Scope Lab

## Learning Goals

* Use `const` and `let` to fix the scope in JavaScript

## Introduction

ES6 gives us new ways to declare variables that help us out with scoping. 
The `var` keyword defines a variable globally or locally to an entire function
regardless of block scope. With `const` and `let`, declaring variables with
`var` is generally discouraged. In this lab, you'll need to debug some issues
related to function scope in JavaScript: variables might not be what we expect,
certain variables might be unavailable, and in general the current code might
be a little chaotic.

## Use `const` and `let` to Fix the Scope in JavaScript

To review:
* A variable or function that is not declared inside a function or block
is the **global** execution context.
* `let` variables are **block-scoped**, and allows you to declare variables
that are limited in scope to the block, statement, or expression on which
it is used
* `const` is also **block-scoped** restricts over-writing variables. It does
not mean the value it holds is immutable, just that the variable identifier
cannot be reassigned. `const` variables also cannot be declared a without
assigning its (constant) value
* Variables declared with `var` are **not** block-scoped, and leaves room
for error

In `index.js`, we've given you some starter code. As is, it does not run.
Start by running the specs and reading the results. Debug and make some fixes
in the code. Run the tests again and repeat. Using your knowledge of scope,
access and change the variables until all tests pass. Make sure to focus on
using `const` and `let` and avoid usage of `var`, or you may experience some
unexpected issues.

## Resources

- [MDN: Scope](https://developer.mozilla.org/en-US/docs/Glossary/Scope)
- [MDN: const](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const)
- [MDN: let](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let)
