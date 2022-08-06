//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IB Outlet or image builder outlet for image
    // of the dice on the left side in the screen
    
    // the name that we have created for this IBOutlet
    // variable will be shown in the story board editor
    // view in the connections tag
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // the code below is used to create an IBOutlet variable
    // for the second image of the dice shown in the story board
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // the below method will work when when the view or ui loads
    // up in the app
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // the code below is used to show the image of dice
        // showing the six number when the view or the ui loads up in the app
        
        // the code below works in the following way
        // who.what = value
        // i.e. who's what property we need to change to what value
        
        // so in our case we need to change the image value of the diceImageView1 property to the dice showing six as value when the view/ ui loads up
        
        diceImageView1.image = UIImage(named: "DiceSix")   // here we are using the UIImage() object and passing the value of named arribute the name of the image that we want to show when the UI / view loads up
        
        
        // the code below is used to change the alpha property of the diceImageView1 to 0.5 to make it transparent
       // diceImageView1.alpha = 0.5
        
        
        
        // the code below is used to change the image of the second dice to DiceTwo image when the view / UI loads up
        diceImageView2.image = UIImage(named: "DiceTwo") // here we are using the UIImage() object and passing the value of named arribute the name of the image that we want to show when the UI / view loads up
    }


}

