//
//  SwitchInterfaceController.swift
//  WatchKitUI
//
//  Created by Jonas Baer on 17.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import WatchKit
import Foundation


class SwitchInterfaceController: WKInterfaceController {

    @IBOutlet weak var lightSwitch: WKInterfaceSwitch!



    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        // still a bug in SWIFT ! ! ! Doesn't work!
        lightSwitch.setColor(UIColor.blueColor())
        lightSwitch.setOn(false)


        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func lightSwitchTapped(value: Bool) {

        // works now - but initally setting of color doesn't work yet see above
        lightSwitch.setColor(UIColor.orangeColor())
        lightSwitch.setEnabled(false)

    }



}
