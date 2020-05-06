/**
 * @author Oleg Cherednik
 * @since 30.04.2018
 */
'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });

    main();
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the reverseString function
 * Use console.log() to print to stdout.
 */
function reverseString(s) {
    try {
        let letters = s.split('');
        let res = '';

        for(let i = letters.length - 1; i >= 0; i--)
            res += letters[i];

        console.log(res);
    } catch (e) {
        console.log(e.message);
        console.log(s);
    }
}

function main() {
    const s = eval(readLine());

    console.log(reverseString(s));
}
