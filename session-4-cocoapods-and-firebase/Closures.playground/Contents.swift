import Foundation

// Functions vs. Closures
func sayHello() {
    print("Hello, world!")
}

let sayHelloClosure = {
    print("Hello, world but in a closure")
}

sayHello()
sayHelloClosure()

// Why use closures?
func badFetchNum() -> Int {
    var num = 0
    
    DispatchQueue.main.async {
        num = 1000
    }
    
    return num
}

let num = badFetchNum()
print(num)

// ---

func goodFetchNum(completion: @escaping (Int) -> Void) {
    var num = 0
    
    DispatchQueue.main.async {
        num = 1000
        completion(num)
    }
}

goodFetchNum(completion: { (num) in
    print(num)
})
