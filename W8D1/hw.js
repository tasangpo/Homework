function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping1()

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping2()

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping3()

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping4()

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    x = 'out of block again';
    console.log(x);
}

// mysteryScoping5()

function madLib(verb, adj, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`)
}

// madLib('make', 'best', 'guac');

function isSubstring(searchString, subString) {
    console.log(searchString.includes(subString))
}

// isSubstring("time to program", "time")
// isSubstring("Jump for joy", "joys")

function fizzBuzz(array) {
    for (let i = 0; i < array.length; i++) {
        let num = array[i];
        if ((num % 3 === 0 || num % 5 == 0) && !(num % 3 === 0 && num % 5 === 0)) {
            console.log(num)
        }
    }
}

// fizzBuzz([1,3,4,5,6,15])

function isPrime(num) {
    if (num < 2) {
        return false
    }
    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false
        }
    }
    return true
}

// console.log(isPrime((2)));
// console.log(isPrime((10)));
// console.log(isPrime((15485863)));
// console.log(isPrime((3548563)));

function sumOfNPrimes(n) {
    let sum = 0
    let arr = []

    for (let i = 2; arr.length < n; i++) {
        if (isPrime(i)) {
            arr.push(i);
            sum += i;
        }
    }
    return sum
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));