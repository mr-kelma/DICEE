//
//  AnimationManager.swift
//  DICEE
//
//  Created by Valery Keplin on 4.07.22.
//

import UIKit

struct AnimationManager {
    let arrayOfDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    func animation(diceImageViewLeft: UIImageView, diceImageViewRight: UIImageView) {
        diceImageViewLeft.animationDuration = 0.8
        diceImageViewRight.animationDuration = 0.8
        diceImageViewLeft.animationImages = arrayOfDice.shuffled()
        diceImageViewRight.animationImages = arrayOfDice.shuffled()
        diceImageViewLeft.startAnimating()
        diceImageViewRight.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
            diceImageViewLeft.stopAnimating()
            diceImageViewRight.stopAnimating()
        }
    }
}
