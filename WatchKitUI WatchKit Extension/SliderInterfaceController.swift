//
//  SliderInterfaceController.swift
//  WatchKitUI
//
//  Created by Jonas Baer on 17.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import WatchKit
import Foundation


class SliderInterfaceController: WKInterfaceController {

    @IBOutlet weak var mySlider: WKInterfaceSlider!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        // Configure interface objects here.

        self.mySlider.setEnabled(true) // why self?
        self.mySlider.setValue(2.0)
        self.mySlider.setColor(UIColor.orangeColor())
        self.mySlider.setNumberOfSteps(5)

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderChanged(value: Float) {

        println(value)
    }
    

}
