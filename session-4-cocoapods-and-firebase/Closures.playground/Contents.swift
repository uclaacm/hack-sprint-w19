import Foundation

// Functions vs. Closures
func sayHello() {
    print("Hello, world!")
}

let sayHelloClosure = {
    print("Hello, world!")
}

// Why use closures?
func badFetchNum() -> Int {
    var num = 0
    
    DispatchQueue.main.async {
        while num < 1000 {
            num += 1
        }
    }
    
    return num
}

let num = badFetchNum()
print(num)

// ---

func goodFetchNum(completion: @escaping (Int) -> Void) {
    var num = 0
    
    DispatchQueue.main.async {
        while num < 1000 {
            num += 1
        }
        
        completion(num)
    }
}

goodFetchNum(completion: { (num) in
    print(num)
})
