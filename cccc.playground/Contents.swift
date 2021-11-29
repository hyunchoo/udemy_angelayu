import UIKit

var greeting = "Hello, playground"


let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.layer.cornerRadius = 25
button.clipsToBounds = true

extension UIButton {
   func makeCircualr() {
       self.clipsToBounds = true
       self.layer.cornerRadius = self.frame.size.width / 2
        
    }
}


button.makeCircualr()
