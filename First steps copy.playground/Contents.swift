import Cocoa

var str = "Hello, playground"
str = "goodbye"

// var creates a new variable

// in this str is a variable and we can change what it equals

// Variables are places where you can store program data
// Called variables because they cna vary
// you can change the variables easily
// 6/6 on variable test

// Strings and Integers
// On a whole number swift will asign the type Int which is short for integer
// If you have large numbers, sswift lets you use underscores as thousand seporators - they just make it easier to read
var popualtion = 8_000_000

// It is safe to change str to another word/str because they are both strings but you can't change str to a number (38) because that's an Int
// numbers inside "quotes" create a string ex. var age = "23" is a string


// Multi line string
//If you want multi line strings you need different syntax you need to start and end with three double quote marks ex.
// Swift is very particular about how you write those quote marks: the opening and closing triple must be on their own line, but opening and closing line breaks won’t be included in your final string.
var str1 = """
Going over
multiple
lines of
string
for an
example
"""

// If you don't want line breaks in your string use a backward slash (\) at the end of each line ex.

var Str1 = """
This is an \
example of \
using a backward \
slash so you don't \
have line breaks and \
your code is neater
"""

// Doubles and booleans
// doubles are different frome integers
//Doubles hold fraction values for ex.
var pi = 3.14159

//Booleans are either true or false
// Swift will automatically assign the boolean type to any variable assigned either true or false as its value. ex.
var great = true

// Constants (let key word)
// value that can only be set once
// Can NOT be changed
//  When writing your own code use let rather than var unless you specifically want to change the variable
// For example
let XcodeLanguage = "Swift"

// Type annotations
//Swift assigns each variable and constant a type based on what value it’s given when it’s created
// When you write code like this swift can see it holds a string
let str2 = "Type annotations"
// This makes str a string so you can't try to assign it a integer or bolean later on.
// This is what's called type inference
// Swift is able to infer the type of something based on how you created it

// You can also be specific if you don't want to rely on swifts type inferences ex.

let year: Int = 1914
let height: Double = 5.79
let GordonComputerStudies : Bool = true
