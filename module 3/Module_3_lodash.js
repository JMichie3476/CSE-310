//pulls the lodash libarary for use
const _ = require("lodash");


// I picked this code up from a question in stack flow, I did write it myself and edited it a little to get 60 numbers, I just wanted 
// an array of disctict random numbers, and since I just learned this languege, I looked up something to help.
// https://stackoverflow.com/questions/5836833/create-an-array-with-random-values

//this loops throw an empty array a and fills it with 60 empty slots.
for (var a=[],i=0;i<60;++i)a[i]=i;

// this is a filling function that takes our empty array and iterates it through the empty indicees and fills with with a single 
// random value. 
function shuffle(array) {
  var tmp = array.length;
  var current = array.length; 
  var top = array.length;
  if(top) while(--top) {
    current = Math.floor(Math.random() * (top + 1));
    tmp = array[current];
    array[current] = array[top];
    array[top] = tmp;
  }
  return array;
}

//calls and uses 
a = shuffle(a);

// this uses the chunk function of lodasth to cut up the array by 5 indexes at a time. Not that the consle logs are
// commented out, this is to prevent the console log from beeing fluded with a ton of resposnes.
let a1 = _.chunk(a, 5);
//console.log(a1);


// These are examples of the slice function, cutting up the array into 6 seperate arrays
let a2 = _.slice(a,0,10);
let a3 = _.slice(a,11,20);
let a4 = _.slice(a,21,30);
let a5 = _.slice(a,31,40);
let a6 = _.slice(a,41,50);
let a7 = _.slice(a,51,60);
//console.log(a2);
//console.log(a3);
//console.log(a4);
//console.log(a5);
//console.log(a6);
//console.log(a7);


// these are an example of the lodash sum function, takeing each slice and printing a sum of them. key
// thing to note is that, as this is a random number generator, each run results in a uniqie value.
let s1 = _.sum(a2);
let s2 = _.sum(a3);
let s3 = _.sum(a4);
let s4 = _.sum(a5);
let s5 = _.sum(a6);
let s6 = _.sum(a7);
console.log(s1);
//console.log(s2);
//console.log(s3);
//console.log(s4);
//console.log(s5);
//console.log(s6);