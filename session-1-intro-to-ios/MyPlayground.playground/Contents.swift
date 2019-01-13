/// Variables
let maximumLoginAttempts = 10
var currentNumberOfAttempts = 0

currentNumberOfAttempts = currentNumberOfAttempts + 1
//maximumLoginAttempts = maximumLoginAttempts + 1

/// Type Inference
var id = 5            // id is of type Int!
var pi = 3.14         // pi is of type Double!
var skyColor = "blue" // skyColor is of type String!
var isHungry = false  // isHungry is of type Bool!

// If statements
let school = "UCLA"
if (school == "Berkeley") {
    print("cannot breathe")
} else if (school == "UCLA") {
    print("just keep breathin and breathin and breathin")
}

// Functions
func squareNum(n: Int) -> Int {
    return n * n
}

let result = squareNum(n: 7)
print(result)

func speakTruth() {
    print("Bplate is the superior dining hall")
}

speakTruth()

// Classes
class Student {
    var name: String
    var uid: Int
    
    init(name: String, uid: Int) {
        self.name = name
        self.uid = uid
    }
    
    func sayHello() {
        print("My name is " + self.name + " and my UID is " + String(self.uid))
    }
}

let lea = Student(name: "Lea", uid: 123456789)
lea.sayHello()

let connie = Student(name: "Connie", uid: 987654321)
connie.sayHello()

lea.name = "Bob"
lea.sayHello()
connie.sayHello()

// Inheritance
class NerdyStudent: Student {
    var gpa: Double
    
    init(name: String, uid: Int, gpa: Double) {
        self.gpa = gpa
        super.init(name: name, uid: uid)
    }
    
    func brag() {
        print("My GPA is " + String(gpa))
    }
}

let tim = NerdyStudent(name: "Timothy", uid: 111111111, gpa: 3.7)
tim.brag()
tim.sayHello()
