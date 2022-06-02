//
//  ViewController.swift
//  DICEE
//
//  Created by Valery Keplin on 1.06.22.
//

import UIKit

let arrayOfDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override var shouldAutorotate: Bool {
        false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewLeft.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageViewRight.image = #imageLiteral(resourceName: "DiceOne")
        //different recording options "UIImage(imageLiteralResourceName: "DiceFive")" or "#imageLiteral()"
        (diceImageViewLeft.alpha, diceImageViewRight.alpha) = (0.0, 0.0)
    }
    
    @IBAction func trowButtonPressed(_ sender: UIButton) {
        diceImageViewLeft.image = arrayOfDice.randomElement()
        diceImageViewRight.image = arrayOfDice[Int.random(in: 0...5)]
        //different recording options '[Int.random(in: _..._)]' or 'randomElement()'
        (diceImageViewLeft.alpha, diceImageViewRight.alpha) = (1.0, 1.0)
        //makes dices isible after throw
    }
}
