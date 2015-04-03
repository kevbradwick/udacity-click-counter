//
//  ViewController.swift
//  Click Counter
//
//  Created by Kevin Bradwick on 03/04/2015.
//  Copyright (c) 2015 KodeFoundry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bgColour = UIColor.whiteColor()
    var count = 0
    var label = UILabel()
    var label2 = UILabel()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = bgColour

        // create a new label
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        
        // label #2
        label2.frame = CGRectMake(250, 150, 60, 60)
        label2.text = "0"
        self.view.addSubview(label2)
        
        // increment button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 120, 60)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        // decrement button
        let decButton = UIButton()
        decButton.frame = CGRectMake(150, 310, 120, 60)
        decButton.setTitle("Decrement", forState: .Normal)
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decButton)
        
        // bg colour button
        let bgColButton = UIButton()
        bgColButton.frame = CGRectMake(150, 370, 120, 60)
        bgColButton.setTitle("Toggle BG", forState: .Normal)
        bgColButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(bgColButton)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: .TouchUpInside)
        decButton.addTarget(self, action: "decrementCount", forControlEvents: .TouchUpInside)
        bgColButton.addTarget(self, action: "toggleBackgroundColour", forControlEvents: .TouchUpInside)
    }
    
    func toggleBackgroundColour() {
        
        // if bg is white, then change to yello
        if self.view.backgroundColor! == bgColour {
            self.view.backgroundColor = UIColor.yellowColor()
        } else {
            // reset back to white
            self.view.backgroundColor = bgColour
        }
    }
    
    func updateLabelsWithCount() {
        self.label.text = "\(count)"
        self.label2.text = "\(count)"
    }
    
    func incrementCount() {
        count++
        updateLabelsWithCount()
    }
    
    func decrementCount() {
        count--
        updateLabelsWithCount()
    }
}

