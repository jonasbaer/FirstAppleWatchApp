//
//  LabelInterfaceController.swift
//  WatchKitUI
//
//  Created by Jonas Baer on 12.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import WatchKit
import Foundation


class LabelInterfaceController: WKInterfaceController {

    @IBOutlet weak var myNewLabel: WKInterfaceLabel!


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        myNewLabel.setText("Hello World ! ! !")
        myNewLabel.setTextColor(UIColor.redColor())

        for family in UIFont.familyNames() as [String] {
            println("family \(family):")

            for font in UIFont.fontNamesForFamilyName(family) {
                println(font)
            }

        }

        var boldFont = UIFont(name: "Exo-Bold", size: 15.5)!
        var attributesDictionary = [NSFontAttributeName : boldFont] // create Dictionary - somehow similar to Arrrays ;)
        var attributedString = NSAttributedString(string: "Hello Class", attributes: attributesDictionary)

        myNewLabel.setAttributedText(attributedString)

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
