//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceimageView1: UIImageView!
    
    
    @IBOutlet var diceimageView2: UIImageView!
    
    var leftNumber = 1
    
    var rightNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    
            }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceimageView1.image = diceArray[Int.random(in: 0...5)]
        
        
        diceimageView2.image = diceArray[Int.random(in: 0...5)]
    
       
        
       
        
    }
}

