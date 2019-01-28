// Optionals
var maybeInt: Int?  //Box -- Might have val (this is a variable declaration)
maybeInt = 5        //Set to int
maybeInt = nil      //Set to nil

// Why use an Optional?
class Person {
    
    var name: String        //Everyone has a name
    var brainPower: Int?    //But not everyone has a brain... like zombies
    
    init(name: String, brainPower: Int?) {  //Let's make an initializer
        self.name = name
        self.brainPower = brainPower
    }
    
    func doWork() {                         //People do work, let's write a function for that.
        print("Work work work work work")
    }
    
}

//Now let's make some people
let kevin = Person(name: "Kevin", brainPower: 10)   //Kevin has a brain, and is pretty smart
print(kevin.brainPower)                             //1. Print out their brain power
print(kevin.brainPower!)                            //2. FORCE UNWRAP: Shove your hand in the box!  "It WILL have a value!  It MUST!"
                                                    //It has to have a value... because I don't know what I'm going to do if it doesn't

let sloth = Person(name: "Sloth", brainPower: 0)    //Named after a sloth... sloths are... real stupid
print(sloth.brainPower)                             //1.
print(sloth.brainPower!)                            //2.

let uscStudent = Person(name: "Trojan USuCk", brainPower: nil)  //PROBLEM: uscStudents don't have brains!  How do we represent that!?!?!
print(uscStudent.brainPower)                        //1.
//print(uscStudent.brainPower!)                     //2. What if the it DOESN'T HAVE A VALUE

// Optional Binding: SAFE.  Let's not crash if it's nil.
func safePrintNames(person: Person) {
    
    let name = person.name
    
    //Let's test if it's nil
    if person.brainPower != nil{                        //IF... LET
        let bp = person.brainPower!
        print("\(name) has a brain power of \(bp).")    //HERE'S A NEW WAY TO PRINT THINGS
    }                                                   //JUST PUT THE VAR IN THE \() AND IT WILL BE PLACED THERE!
    else{
        print("\(name) has no brain.")
    }
    
    //There is a better way: if... let
    if let bp = person.brainPower {                     //brainPower is local
        print("\(name) has a brain power of \(bp).")
    } else {
        print("\(name) has no brain.")
    }
    
}

//Look!  It doesn't crash if we do USC student now!
safePrintNames(person: kevin)
safePrintNames(person: sloth)
safePrintNames(person: uscStudent)

// Optional chaining - gracefully fail.
// You can have an optional for one of your classes

//Let's make one for 'Person'
let blakeFromCS35L: Person? = nil                               //FIRST
//let blakeFromCS35L = Person(name: "Blake", brainPower: -6)    //SECOND
let flakyTeamMember: Person? = blakeFromCS35L
flakyTeamMember?.doWork()                                       //Oh wow... Blake didn't do work... surprizing
                                                                //but let's say he did show up ^^^

