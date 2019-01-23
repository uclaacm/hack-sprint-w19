// Optionals
var maybeInt: Int?  //Box -- Might have val
maybeInt = 5        //Set to int
maybeInt = nil      //Set to nil

// Why use an Optional?
class Person {
    
    var name: String
    var brainPower: Int?    //Not everyone has a brain... like zombies
    
    init(name: String, brainPower: Int?) {
        self.name = name
        self.brainPower = brainPower
    }
    
    func doWork() {
        print("Work work work work work")
    }
    
}

let kevin = Person(name: "Kevin", brainPower: 10)
print(kevin.brainPower)
print(kevin.brainPower!)
let slug = Person(name: "Slug", brainPower: 0)
print(slug.brainPower)
print(slug.brainPower!)
let uscStudent = Person(name: "Trojan USuCk", brainPower: nil)
print(uscStudent.brainPower)
//print(uscStudent.brainPower!)

// Optional Binding - be safe.
func safePrintNames(person: Person) {
    
    let name = person.name
    
    if person.brainPower != nil{
        let bp = person.brainPower!
    }
    
    //brainPower is local
    if let brainPower = person.brainPower {
        print("\(name) has a brain power of \(brainPower).")
    } else {
        print("\(name) has no brain.")
    }
    
}

safePrintNames(person: kevin)
safePrintNames(person: slug)
safePrintNames(person: uscStudent)

// Optional chaining - gracefully fail.

//let blakeFromCS35L = Person(name: "Blake", brainPower: -6) //SECOND
let blakeFromCS35L: Person? = nil   //FIRST
let flakyTeamMember: Person? = blakeFromCS35L
flakyTeamMember?.doWork()

