import Cocoa

// Protocols
protocol CanFly {
    func fly()
}

class Bird: CanFly {
    var wingspan = 1.5
    
    func fly() {
        print("fly fly fly")
    }
}

func makeFly(animal: CanFly) {
    animal.fly()
}

let bird = Bird()
makeFly(animal: bird)

// Delegates
protocol StageDelegate {
    func makeStage()
}

protocol CostumeDelegate {
    func makeDress() -> String
}

protocol BackupDancerDelegate {
    func dance()
}

class Taylor {
    var stageDelegate: StageDelegate!
    var costumeDelegate: CostumeDelegate!
    var backupDancerDelegate: BackupDancerDelegate?
    
    func writeBreakupSong() -> String {
        return "I Knew You Were Trouble"
    }
    
    func goOnTour() {
        let song = writeBreakupSong()
        
        stageDelegate.makeStage()
        let dress = costumeDelegate.makeDress()
        backupDancerDelegate?.dance()
        
        print("singing \(song) and wearing \(dress)")
    }
}

class RoseBowl: StageDelegate {
    func makeStage() {
        print("preparing stage for taylor")
    }
}

class Gucci: CostumeDelegate {
    func makeDress() -> String {
        let dress = "snake dressssssssssssss by gucci"
        return dress
    }
}

class TodrickHall: BackupDancerDelegate {
    func dance() {
        print("shaking it off")
    }
}

let taylorSwift = Taylor()
taylorSwift.stageDelegate = RoseBowl()
taylorSwift.costumeDelegate = Gucci()
taylorSwift.backupDancerDelegate = TodrickHall()

taylorSwift.goOnTour()

class GeneBlock: CostumeDelegate {
    func makeDress() -> String {
        let dress = "joe bruin costume"
        return dress
    }
}

taylorSwift.costumeDelegate = GeneBlock()
taylorSwift.goOnTour()
