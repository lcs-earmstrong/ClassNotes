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
   
    // Return height in meters
    // A computed property
    var heightInMeters: Double {
        return heightInCentimetres / 100
    }
    
    var bodyMassIndex: Double {
       return massInKilograms / heightInMeters / heightInMeters
    }

}

var me = Person(name: "Evan", hairColour: "Orange", age: 15, heightInCentimetres: 157.48, massInKilograms: 50)

me.name
me.hairColour
me.age
me.heightInCentimetres
me.massInKilograms


me.bodyMassIndex

