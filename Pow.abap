Pow(x, n) is where many people first encounter binary exponentiation (also called fast exponentiation), which is related to bits but much more approachable than Single Number III.

The problem:

Implement pow(x, n) and return xⁿ.

Examples:

x = 2
n = 10

answer = 1024

Naive approach:

result = 1

repeat n times
  result *= x

Complexity:

O(n)

The challenge is that n can be huge.

Before we get into bits, what's your first instinct?

For example:

2^10

Can you see any way to reuse work instead of doing:

2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2
