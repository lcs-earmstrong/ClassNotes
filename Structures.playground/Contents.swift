import Cocoa


// define a structure that describes a person
struct Person {
    //MARK : Properties
    // Each property is an attribute of a given Person
    // These are examples of stored properties
    // They just hold a value (they are containers)
    
    var name: String
    var hairColour: String
    var age: Int
    var heightInCentimetres: Double
    var massInKilograms: Double
   
    //Mark: Computed properties
    // Return height in meters
    // A computed property
    var heightInMeters: Double {
        return heightInCentimetres / 100
    }
    
    var bodyMassIndex: Double {
       return massInKilograms / heightInMeters / heightInMeters
    }
   // MARK: Functions
    // say hi
    // A function
    // Use function over a computed property when we need some info to do the job
    // In this case, the info (input) we need is the "intro
  
    func sayHello(with intro:String) {
        print(intro + name)
    }

}

var me = Person(name: "Evan", hairColour: "Orange", age: 15, heightInCentimetres: 157.48, massInKilograms: 50)


// Say hello a few different ways
me.sayHello(with: "Hi, my name is ")
me.sayHello(with: "Hey, how are you, I'm ")
