//
//  ViewController.swift
//  Decision Maker
//
//  Created by Amy Joscelyn on 1/29/17.
//  Copyright © 2017 Amy Joscelyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let yesOrNo = [ "Yes", "No" ]
        let takeout = [ "Thai", "Greek", "Indian", "Pizza", "Diner", "Mexican", "cooked at home", "Chinese", "burgers", "barbecue" ]
        let intervals = [ "unison", "m2", "M2", "m3", "M3", "P4", "A4/d5", "P5", "m6", "M6", "m7", "M7", "octave", "m9", "M9", "m10", "M10" ]
        
        let decisionYN = yesOrNo[randomIntFromArrayCount(yesOrNo.count)]
        let decisionTakeout = takeout[randomIntFromArrayCount(takeout.count)]
        let decisionInterval = intervals[randomIntFromArrayCount(intervals.count)]
        
        print("Dinner should be \(decisionTakeout) tonight.")
        print("The next interval focus should be: \(decisionInterval)")
        print("Should you rely on these decisions? \(decisionYN)!")
    }
    
    func randomIntFromArrayCount(_ arrayCount: Int) -> Int
    {
        return Int(arc4random_uniform(UInt32(arrayCount)))
    }
}

