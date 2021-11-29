


protocol AdvacneLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvacneLifeSupport?
    
    func assessSituation() {
        print("무슨 일이 있었는지 말해 줄래요?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}


struct Paramedic: AdvacneLifeSupport { 
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("초당 30번의 흉부압박")
    }
}
    class Doctor: AdvacneLifeSupport {
        
        init(handler:EmergencyCallHandler) {
            handler.delegate = self
        }
        func performCPR() {
            print("의사는 1초에 30번 흉부압박을 한다")
        }
        func useStethescope() {
            print("심장 소리를 듣으면서")
        }
        
    }

    class Surgeon: Doctor {
        override func performCPR() {
            super.performCPR()
            print("Sings staying alive by the BeeGees ")
        }
        func useElectricDrill() {
            print("Whirr...")
        }
    }


let emiilo = EmergencyCallHandler()
let choochoo = Surgeon(handler: emiilo)
emiilo.assessSituation()
emiilo.medicalEmergency()

