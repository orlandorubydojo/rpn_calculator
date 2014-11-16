Reverse Polish Notation Calculator
==============

[From Wikipedia](http://en.wikipedia.org/wiki/Reverse_Polish_notation)

Reverse Polish Notation Calculator is a mathematical notation in which every
operator follows all of its operands which puts the operator in the prefix
position.

For example:

To add 3 and 4 we would normally write it "3 + 4". In reverse polish notation we
would write this as "3 4 +"

If there are multiple operations, the operator is give immediately after its second
operand; so "3 4 - 5 +" would be expressed as "3 - 4 + 5". Four is first subtracted
from 3, then 5 added to it.

We will build a small a application that will evaluate a RPN string for the correct
calculations. We only worry about adding, subtracting and multiplying.

```ruby
calculator.evaluate('-1') #=> -1
calculator.evaluate('1 1 +') #=> 2
calculator.evaluate('1 -1 +') #=> 0
calculator.evaluate('2 2 *') #=> 2 * 2
calculator.evaluate('5 10 -') #=> 5 - 10
calculator.evaluate('1 2 3 4 + + +') #=> 1 + 2 + 3 + 4
calculator.evaluate('1 2 + 3 4 + *') #=> (2 + 1) * (4 + 3)
calculator.evaluate('20 10 5 4 + * -') #=> 20 - 10 * (5 + 4)

```

