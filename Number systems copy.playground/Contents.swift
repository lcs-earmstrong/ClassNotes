import Cocoa

var str = "Hello, playground"

// find the digit that represents 487 in binary

487 % 2
487 / 2

243 % 2
243 / 2

121 % 2
121 / 2

60 % 2
60 / 2

30 % 2
30 / 2

15 % 2
15 / 2

7 % 2
7 / 2

3 % 2
3 / 2

1 % 2
1 / 2

//  the binary conversion of 487 is 111100111

// Converting base 10 value of 76 to base 2

76 % 2
76 / 2

38 % 2
38 / 2

19 % 2
19 / 2

9 % 2
9 / 2

4 % 2
4 / 2

2 % 2
2 / 2

1 % 2
1 / 2

// 76 in binary = 1001100 in base 2
// A constant cannot be changed once created


// Enumeration
//An enumeration simply lists possibilities
//
// The: Int... that difines the type of the raw value associated with the case
//
//This is another example of abstraction
// - hides complexity
// - makes the call site easy to ride
// e.g.:  getRepresentation(of: 17 inBase: .binary)
enum numberSystemBase: Int {
    case binary = 2   // is the raw value for this case
    case octal = 8   // is the raw value for this case
    case hexidecimal = 16  // is the raw value for this case
}

// Functions
// Functions are a way to group (encapsulate) related behavior
//Once some behavior is inside a function, the complexity is hidden
// We can use, or "call", the function whenever we want
/*
 
 Basic syntax of a function:
 
 func functionName(parameter, parameter2,..)-> return type  {
 
 }
 */

// Get the alternate representation of a value in a different base
func getRepresentation(of ValueToConvert: Int, inBase base: numberSystemBase) -> String  {
    
 
    // Create a variable with the value of "valueToConvert"
    //A variable Can be changed once created
    var DecimalValueLeftToConvert = ValueToConvert
    // This creates an empty string
    // A string is just text like "hello"
    var representation = ""

    //This abstraction will use is a LOOP
    // Our end condition is that the decimalValueLefttoConvert is equal to zero
    // So long as the Condition is true, the block of code surrounded by the ( ) brackets will be run repeatedly
    while DecimalValueLeftToConvert > 0 {
    //Get the next digit
        
        
        let nextDigit = DecimalValueLeftToConvert % base.rawValue
        //Add that new digit to the representation
        // Swift is Strickly Typed Language
        // It DOES NOT automatically convert data types
        // So, to make the Int into a String we need to specify this
        //
        //If Statement
        //
        //Check a condition - when true do one thing.
        //                  - when false do something else
        if base == .hexidecimal {
            // we know the base is hexidecimal (condition is true)
            
            // Carefully set the next digit
            //When something other tha 0 to 9... use ABCDEF
            //
            // A switch statement evaluates some value
            //
            // And take different actions depending on the vlue
            switch nextDigit {
            case 0...9:
                representation = String(nextDigit) + representation
            case 10:
            representation = "A" + representation
            case 11:
            representation = "B" + representation
            case 12:
            representation = "C" + representation
            case 13:
            representation = "D" + representation
            case 14:
            representation = "D" + representation
            case 15:
            representation = "F" + representation
            default:
                break
            }
        }  else  {
            // The base is octal or binary (condition was false)
            representation = String(nextDigit) + representation
        }
        
        //Get the decimal value left to convert
        DecimalValueLeftToConvert = DecimalValueLeftToConvert / base.rawValue
        
    }
    return representation
}

// Call or use the function

getRepresentation(of: 15, inBase: .hexidecimal)

// Binary to decimal
// Base 2 to base 10

// The value we are converting
let value = "1011011"
//
// What base are we converting from
let base = 2.0
//
// The exponent value at the right most digit
var exponent = 0.0
//
// the current sum in decimal
var decimalEquivalent = 0.0
//
// Iterate over each character
// From right to left!
for character in value.reversed() {
    
    // Get the current digit as a double (decimal)
    if let digit = Double(String(character)){
        
        // Add the current sum
       decimalEquivalent += digit * pow (base, exponent)
        
        // Increment the exponent
        exponent += 1
    }
                                                      
}
// get the value
decimalEquivalent


// For octal/ base 8
let value1 = "34"
let base1 = 8.0
//
// The exponent value at the right most digit
var exponent1 = 0.0
//
// the current sum in decimal
var decimalEquivalent1 = 0.0
//
// Iterate over each character
// From right to left!
for character in value1.reversed() {
    
    // Get the current digit as a double (decimal)
    if let digit = Double(String(character)){
        
        // Add the current sum
       decimalEquivalent1 += digit * pow (base1, exponent1)
        
        // Increment the exponent
        exponent1 += 1
    }
                                                      
}
// get the value
decimalEquivalent1

let value2 = "5289FACD"
let base2 = 16.0
//
// The exponent value at the right most digit
var exponent2 = 0.0
//
// the current sum in decimal
var decimalEquivalent2 = 0.0
//
// Iterate over each character
// From right to left!
for character in value2.reversed() {
    
    // Get the current digit as a double (decimal)
    if let digit = Double(String(character)){
        
        // Add the current sum
       decimalEquivalent2 += digit * pow (base2, exponent2)
    } else {
        
        // If the conversion to a double failed, it must be a character over 9 (ABCDEF)
        switch character {
        case "A":
            decimalEquivalent2 += 10.0 * pow (base2, exponent2)
        case "B":
            decimalEquivalent2 += 11.0 * pow (base2, exponent2)
        case "C":
            decimalEquivalent2 += 12.0 * pow (base2, exponent2)
        case "D":
            decimalEquivalent2 += 13.0 * pow (base2, exponent2)
        case "E":
            decimalEquivalent2 += 14.0 * pow (base2, exponent2)
        case "F":
            decimalEquivalent2 += 15.0 * pow (base2, exponent2)
        default:
            break
        }
        
    }
    // Increment the exponent
    exponent2 += 1
}
// get the value
 decimalEquivalent2

// print the value (for fun)
print ("hexadecimal answer TEST")
    print (decimalEquivalent)


func getDecimalEquivalent(of value: String, in base:Double) -> Double {

    for character in value.reversed() {
    
        if let digit = Double(String(character)) {
            decimalEquivalent += digit * pow (base, exponent)
            

        } else {
    
            switch character {
            case "A":
                decimalEquivalent += 10.0 * pow (base, exponent)
            case "B":
                decimalEquivalent += 11.0 * pow (base, exponent)
            case "C":
                decimalEquivalent += 12.0 * pow (base, exponent)
            case "D":
                decimalEquivalent += 13.0 * pow (base, exponent)
            case "E":
                decimalEquivalent += 14.0 * pow (base, exponent)
            case "F":
                decimalEquivalent += 15.0 * pow (base, exponent)
            default:
                break
              }
        }
exponent += 1
    }
    return decimalEquivalent
    }
getDecimalEquivalent (of: "11", in: 2.0)
