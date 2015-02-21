//
//  ViewController.swift
//  TaskTimer
//
//  Created by 相澤渉太 on 2015/02/21.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTIme = NSTimer()
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    
    
    @IBOutlet weak var myProgressView: UIProgressView!
    
    
    @IBAction func myButtonPressed(sender: UIButton) {
        myTIme = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("timeCount"), userInfo: nil, repeats: true)
    
    }
    
    
    @IBAction func stoppedButton(sender: UIButton) {
        println("StopTimer")
        myTIme.invalidate()
    }
    
    func timeCount() {
        myProgressView.progress = myProgressView.progress+0.01
        myLabel.text = "progress: \(myProgressView.progress)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "0.0"
        myProgressView.progress = 0.0
        myLabel.text = "Progress: \(myProgressView.progress)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

