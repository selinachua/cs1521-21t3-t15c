/* 
functions:
- single responsibility 
- not too long -> helper functions 
- repeated code 

if (cond1) {
    if (cond2) {
        // abc
    }
}

if (cond1) {
    if (!cond2) {
        // return out of the function
        return;
    }
    // abc
}
*/