//
//  ViewController.swift
//  BruinTap
//
//  Created by Kevin Tan on 10/31/17.
//  Copyright © 2017 KxT Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    
    var timer: Timer!
    var time: Double = 10
    
    @IBOutlet var tapButton: UIButton!
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func startTap(_ sender: UIButton) {
        
        score = 0
        time = 10
        
        scoreLabel.text = String(score)
        timerLabel.text = String(format: "%.2f", time)
        
        timer = Timer.scheduledTimer(timeInterval: 0.01,
                                     target: self,
                                     selector: #selector(timerAction),
                                     userInfo: nil,
                                     repeats: true)
        
        startButton.isEnabled = false
        tapButton.isEnabled = true
        
    }
    
    @IBAction func buttonTap(_ sender: UIButton) {
        
        score += 1
        scoreLabel.text = String(score)
        
    }
    
    @objc func timerAction() {
        
        time -= 0.01
        timerLabel.text = String(format: "%.2f", time)
        
        if time <= 0 {
            
            timer.invalidate()
            timerLabel.text = "0.00"
            
            startButton.isEnabled = true
            tapButton.isEnabled = false
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapButton.isEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

