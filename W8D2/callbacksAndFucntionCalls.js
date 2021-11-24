// Simple Timeout
// Let's write a simple setTimeout function!

// First, set a simple timeout for 5000 ms(use window.setTimeout).Pass in a callback function that calls alert('HAMMERTIME').

// Open up Chrome Devtools and copy your code into the console to test it. (Open a chrome window then press cmd + option + i.Press esc to show the console.)

// Note: while we're waiting for our timeout, we can still scroll around the website and interact with it normally. Is setTimeout synchronous or asynchronous?

window.setTimeout(function () {
    alert('HAMMERTIME');
}, 5000);

function hammerTime(time) {
    window.setTimeout(function () {
        alert(`${time} is hammertime!`)
    }, time);
}

// hammerTime(1000);


