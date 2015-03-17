//
//  ButtonInterfaceController.swift
//  WatchKitUI
//
//  Created by Jonas Baer on 13.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import WatchKit
import Foundation


class ButtonInterfaceController: WKInterfaceController {

    @IBOutlet weak var myButton: WKInterfaceButton!


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        myButton.setTitle("Don't press!")
        myButton.setBackgroundImage(nil)
        let lightGreyColor = UIColor.lightGrayColor()
        myButton.setBackgroundColor(lightGreyColor)


        // EXPAMPLE DESCRIBING HOW DICTIONARIES WORK..
//            let bombType = ["BombSize":3.99,"DestroyFactor":0.35]
//            let factorMultiplyerOfBomb = 2.0
//            let calBombingPower = bombType["DestroyFactor"]! * factorMultiplyerOfBomb
//            println("A bomb with size: ")
//            println (bombType["BombSize"]!)
//            println(" has the distroy power of: ")
//            println (calBombingPower)
        // EXPAMPLE DESCRIBING HOW DICTIONARIES WORK..

        // EXPAMPLE DESCRIBING HOW ARRAYS WORK..
//            var shoppingCard = ["Apple", "Water", "Beer", "Chocolate", 6, 0.9999]
//            var shoppingCardItemNr1 = shoppingCard.count
//            println ("There are \(shoppingCardItemNr1) items in the list - See here:")
//            println (shoppingCard[0])
//            println (shoppingCard[1])
//            println (shoppingCard[2])
//            println (shoppingCard[3])
//            println (shoppingCard[4])
//            println (shoppingCard[5])
        // EXPAMPLE DESCRIBING HOW ARRAYS WORK..

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func buttonPressed() {
        let blowUpImage = UIImage(named: "BlowUp")
        myButton.setBackgroundImage(blowUpImage)

        let BoldItalicFont = UIFont(name: "Exo-BlackItalic", size: 15.0)!
        let attributedDictionary = [NSFontAttributeName : BoldItalicFont]
        let attributedString = NSAttributedString(string: "Oh ohhhhh", attributes: attributedDictionary)

        myButton.setAttributedTitle(attributedString)
        myButton.setEnabled(false)


    }




}
