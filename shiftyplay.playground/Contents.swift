
var str = "Hello, playground"

// Faking input
let n = 12
let k = 3


//testing logic
var output = n
for i in 1...k{
    print("i is \(i)")
    var toAdd = n
    // Multiply by 10 "i" times
    for _ in 1...i {
        toAdd *= 10
    }
    output += toAdd
}
output
//output += n * 10
//output += n * 10 * 10
//output += n * 10 * 10 * 10
