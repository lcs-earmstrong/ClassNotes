import Cocoa

var str = "Hello, playground"

// Data Types

// Q.  What is the UInt8 data type?

//A. It is an unsigned integer, storing 8 bits.

UInt8.max
UInt8.min

// We know in binary
//
//... the first digit counts for 2^0 or 1.
//... in a 8 bit value, the final digit counts for 2^7

let exercise1 = "Evan Armstrong"

for singleCharaacter in exercise1{
    print(singleCharaacter)
}


// Exercise 2 begins

print (" exercise 2 begins ")

let aQuestion = "请问现在几点了?"

// Method one =  from start of string

let indexRelativeToStart = aQuestion.index(aQuestion.startIndex, offsetBy:3)
print(aQuestion[indexRelativeToStart])

// Method 2 = from end of string

let indexRelativeToEnd = aQuestion.index(aQuestion.endIndex, offsetBy: -5)

print (aQuestion[indexRelativeToEnd])
