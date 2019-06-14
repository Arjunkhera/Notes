## Sample Codes

#### Functions

```javascript

// normal function
function helloworldtype1(str){
  console.log(str+" type1");
}

// function variable
let helloworldtype2 = function(str) {
  console.log(str+" type2");
};

// arrow function
let helloworldtype3 = str => console.log(str+" type3");

let str = "helloworld";
helloworldtype1(str);
helloworldtype2(str);
helloworldtype3(str);

let sayHi = function() {
  console.log( "Hello" );
};

// print the contents of the function
console.log(sayHi);
// use the function
sayHi();


// the following is wrong because functions in ? are not valid
// let ask = (str) => { confirm(str)?()=>alert("You agreed."):()=>alert("You canceled the execution.")};
// ask("Do you agree?");


let ask = (inp,yes,no) => { (confirm(inp))?yes():no()};
ask("Do you agree?",()=>alert("You agreed."),()=>alert("You canceled the execution."));

```

---

#### Interaction

```javascript

alert("Welcome to Interation.js");

let answer = prompt("Please enter the password",'password');

if(answer == "password"){
  alert("success, check the console log for your gift");
  console.log("you are the best person in the world");
}
else alert("failure");

let isSpecial = confirm("Are you special");
if(isSpecial)
  alert("Thats more like it")

```

---

#### Variables

```javascript

// declaring a variable
let a = 5;
// this also works
var b = 10;

console.log("The value of a is :",a);
console.log("The value of b is :",b);

// multiline declaration also works
let a1 = 5,a2 = 6,a3 = 10;
console.log("The values are ",a1,a2,a3);

// constants
const COLOR_RED = "#F00";
const COLOR_GREEN = "#0F0";

// ...when we need to pick a color
let color = COLOR_ORANGE;

```

---

#### Switch

```javascript

// the following statement would have made age string
//let age = prompt("Enter your age","");

// here string is int
let age = +prompt("Enter your age","");

switch (age) {
  case "18":
    alert("adult");
    break;
  case 20:
    alert("rock and roll")
    break;
  default:
    alert("cant say");
}

```

---

#### Lables

```javascript

encasement :
for(let i=0;i<2;i++)
  for(let j=0;j<2;j++){
    let input = prompt(`enter the coordinates:(${i},${j})`,'');
    // here input is of type string
    console.log(input);
    if(!input)
      break encasement;
    }
alert("End of the loop");

```

---

#### Prime Numbers

```javascript

// let n = +prompt("enter the number n",'');
let n = prompt("enter the number n",'');
n = Number(n);

let arr = new Array(n).fill(false);
for(let i = 2;i<=Math.sqrt(n);i++){
  if(arr[i])
    continue;

  let j = i*2;
  while(j<=n){
    arr[j] = true;
    j += i;
  }
}

let answer = [];
// storing numbers in array
for(let i=2;i<n;i++)
  if(!arr[i])
    answer.push(i);
// displaying answers
for(let i=0;i<answer.length;i++)
  alert(answer[i]);

```

---

#### Find Power

```javascript

function calcPower(num,pow){

  // base case
  if(pow == 0)
    return 1;
  // recursive case
  return num*calcPower(num,pow-1);
}

function findPow(){
  // + is to convert the string type to number
  let number = +prompt("Enter the number");
  let power = +prompt("Enter the power to be raised to");

  let answer = calcPower(number,power);

  alert(`The answer is ${answer}`);
}

findPow();

```
