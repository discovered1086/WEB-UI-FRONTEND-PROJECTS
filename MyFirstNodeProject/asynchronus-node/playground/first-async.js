//Below are just two basic synchronous console.log statements
console.log('This is the first time I am writing node async program');

//Best way to illustrate non-blocking behavior of node is by using the set time out function
setTimeout(() => {
    console.log('Somewhere in the middle');
}, 2000);

//What happens here is that we're actually not asking node to wait 'idly' for 2 seconds to call the function. We're just registering a callback function which will be triggered after 2 seconds. So Node can go about doing other stuff while these 2 seconds are elapsing.

setTimeout(() => {
    console.log('Still somewhere in the middle');
}, 3000);

setTimeout(() => {
    console.log('Still somewhere in the middle with zero delay');
}, 0);

console.log('This is the second time am doing so');


//Why does the zero second delay prints after the final console.log statement??
//Call stack is a really simple data structure within V8 engine.
//jUst like java node has a main() function which is the wrapper function we saw while debugging, remember??

//The callback queue has all the callback functions that are ready to get fired.

//The callback queue needs to wait untill the call stack is empty. When it's empty then only they're going to get back to the call stack

//The event loop is what tracks the call stack. It can't do anything until the call stack is empty. When the call stack is empty then the event loop
//looks at the callback queue to check if there's anything to be run.

//In general callback function is a function that gets passed as an arguement to another function, that gets executed after some event occurs
