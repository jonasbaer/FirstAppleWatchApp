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
