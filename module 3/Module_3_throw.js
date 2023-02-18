// THis tests a quick recursive error check by running a value through and chacking if there is a string.
function toUppercase(string) {
    if (typeof string !== "string") {
      throw TypeError("Incorect type, please use a string");
    }
  
    return string.toUpperCase();
};
  
// The outpu is again commented out to prevent all the error logs from cluttering the screen
//console.log(toUppercase(4));

// this tests the result when put through an array
const e1 = ["test",2,"test"];
//console.log(toUppercase(e1));

//this is a test of a cant throw using the sum function, making sure the input doesn't have a string
function sum(array) {
    if(typeof array !== "number") {
        throw TypeError("not a number, please use a number");
    }

    return array.sum();
};

//console.log(sum("a"));

const e2 = [3,7,4,"a"];

//console.log(sum(e2));