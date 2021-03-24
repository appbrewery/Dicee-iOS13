//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
////        WHO            WHAT    VALUE
////        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
////        diceImageView1.alpha = 0.5
////        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")

//    }

    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("button got tapped.")
//        var leftDiceNumber = 1 - remember that local variables will reset which is why is is preferable
//        swap out [Int.random(in: 0...5)]  with .randomElement()        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()

//        print(Int.random(in: 1...10))
    }
    
}

