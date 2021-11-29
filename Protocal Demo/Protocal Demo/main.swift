protocol Canfly{
    func fly()
    
}
extension Canfly {
    func fly() {
        print("The object takes off into the air")
    }
}

class Bird {
   
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
}

class Eagale:Bird, Canfly {
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through thw water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingobject: Canfly) {
        flyingobject.fly()
    }
}

struct Airplane: Canfly {
   
}

let myPlane = Airplane()
myPlane.fly()
