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
let hunger = 10
if (hunger < 10) {
    print("let's go to bplate")
} else {
    print("i need de neve late night chicken tenders")
}

// Functions
func squareNum(n: Int) -> Int {
    return n * n
}

let result = squareNum(n: 7)
print(result)

func sayHello() {
    print("Hello, world!")
}

sayHello()

// Classes
class Animal {
    var numLegs: Int
    var noise: String
    
    init(numLegs: Int, noise: String) {
        self.numLegs = numLegs
        self.noise = noise
    }
    
    func makeNoise() {
        print(self.noise)
    }
}

let tim = Animal(numLegs: 3, noise: "uwu")
tim.makeNoise()

let connie = Animal(numLegs: 2, noise: "stop saying uwu")
connie.makeNoise()

tim.numLegs -= 2
print(tim.numLegs)
print(connie.numLegs)

// Inheritance
class Fox: Animal {
    var tailLength: Double
    
    init(tailLength: Double) {
        self.tailLength = tailLength
        super.init(numLegs: 4, noise: "ringding")
    }
}

let fox = Fox(tailLength: 2.1)
print(fox.tailLength)
fox.makeNoise()
