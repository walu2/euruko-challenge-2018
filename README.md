# euruko-challenge-2018

### Problems

#### 1. Torsional primes
Torsional primes are prime numbers which remain prime under all cyclic permutations of their digits.

For instance, the cyclic permutations of the number 3779 - 7793, 7937, 9377 are all prime numbers.

There are 13 such numbers below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

Write a function `torsional(n)` that returns a list of all torsional prime numbers smaller than a given number n in ascending order.

#### 2. Water bucket problem
You have two buckets of capacity x and y litres, respectively. You have to use these buckets to measure z litres of water, where z < y.

Initially, both buckets are empty and you can assume an infinite supply of water to fill the buckets with.

You are only allowed to use the buckets in the following ways:
* Empty a bucket completely
* Fill a bucket completely
* Transfer the water from one bucket to another until either bucket is empty of full

Write a function `measure(x, y, z)` which returns a series of steps to measure z litres of water using buckets with x and y litre capacities.

#### 3. Submit your solution
Make a PR to this repository with the name of the problem you're trying to solve.
