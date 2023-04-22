//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceImages = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
    ]

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func rollButtonPress(_ sender: UIButton) {
        let randomIndexOne = getRandomNumber(upTo: (diceImages.count - 1))
        let randomIndexTwo = getRandomNumber(upTo: (diceImages.count - 1))
        diceImageViewOne.image = diceImages[randomIndexOne]
        diceImageViewTwo.image = diceImages[randomIndexTwo]
    }
    func getRandomNumber(upTo maxValue:Int) -> Int {
        return Int.random(in: 0..<maxValue)
    }


}

