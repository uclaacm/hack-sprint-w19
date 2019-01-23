// Optionals
var maybeInt: Int?
maybeInt = 5
maybeInt = nil

// Why use an Optional?
class Person {
    
    var name: String
    var brainPower: Int?
    
    init(name: String, brainPower: Int?) {
        self.name = name
        self.brainPower = brainPower
    }
    
    func doWork() {
        print("Work work work work work")
    }
    
}

let kevin = Person(name: "Kevin", brainPower: 10)
let slug = Person(name: "Sluggie", brainPower: 0)
let uscStudent = Person(name: "Trojan USuCk", brainPower: nil)

// Force unwrapping - brute force. Crash the program if there's nothing there.
func printNames(person: Person) {
    
    let name = person.name
    let brainPower = person.brainPower!
    
    print("\(name) has a brain power of \(brainPower).")
    
}

printNames(person: kevin)
// printNames(person: shannon) Crash!
// Optional chaining - gracefully fail.
let flakyTeamMember: Person? = nil
flakyTeamMember?.doWork()

// Optional Binding - be safe.
func safePrintNames(person: Person) {
    
    let name = person.name
    
    if let brainPower = person.brainPower {
        print("\(name) has a brain power of \(brainPower).")
    } else {
        print("\(name) has no brain.")
    }
    
}

safePrintNames(person: kevin)
safePrintNames(person: slug)
safePrintNames(person: uscStudent)
