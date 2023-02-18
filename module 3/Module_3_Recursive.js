
// This is an example of a quick recursive function, built to find the factorial of a submitted number.
const Factorial = (n) => {
    if (n === 0) {
        return 1;
    } else{
        return n * Factorial(n-1);
    }
};

// Tthis prints the factorial of 3, which i the above function is correct, should be 3.
console.log(Factorial(3));

// this is an example of callling the factorial function into a variable a1 and outputing that new variable.
// if done correctly, the correct value of this variable should be 8.
a1 = Factorial(2) + Factorial(3);
console.log(a1);

// creating another quick recursive function, but this time with two imputs for raising a number by a sertain power.
function power(x, n) {
    if (n == 1) {
      return x;
    } else {
      return x * power(x, n - 1);
    }
};

// this prints out a value using the power function, if the function is correct, it should be 16.
console.log(power(2,4));

// this test both functions in tandum, the output should be 33.
a2 = Factorial(3) + power(3,3);
console.log(a2);