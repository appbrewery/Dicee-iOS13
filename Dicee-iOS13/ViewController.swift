//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

//The controller will allow me to interact with the main storyboard design
// Storyboard is out interface builder
import UIKit

class ViewController: UIViewController {
    // IBoutlet is an Interface Builder outlet

    @IBOutlet weak var rollResult: UILabel!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceImageFileName = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
//    use the view did load to set some default behavior when our app loads for the first time
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        // To get change the image we use dot notation. who.what = value
//
//        diceImageView1.image = UIImage(named: "DiceFive")
//        diceImageView2.image = UIImage(named: "DiceTwo")
//
//
//    }
    // IBAction is an Interface Builder Action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dice1Value = Int.random(in: 0...5)
        let dice2Value = Int.random(in: 0...5)
        diceImageView1.image = UIImage(named: diceImageFileName[dice1Value])
        diceImageView2.image = UIImage(named: diceImageFileName[dice2Value])
        if dice1Value > dice2Value {
            print("Left 1 won!")
            rollResult.text = "Left die won!"
        }else if dice2Value > dice1Value {
            print("Right 2 won!")
            rollResult.text = "Right die won!"
        }
        else{
            print("Its a tie!")
            rollResult.text = "Its a tie!"
        }
    }
    
}

