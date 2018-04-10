//
//  ViewController.swift
//  Digital Timer
//
//  Created by D7703_03 on 2018. 4. 10..
//  Copyright © 2018년 D7703_03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timerSwitch: UISwitch!
    
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      timerSwitch.setOn(false, animated: true)
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        timeLabel.text = formatter.string(from: date)
    }
  
    @IBAction func timerStart(_ sender: Any) {
        if timerSwitch.isOn == true {
         //  myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()
            })
        } else {
            myTimer.invalidate()
        }
    }
    
}

