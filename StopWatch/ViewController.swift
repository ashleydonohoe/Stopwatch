//
//  ViewController.swift
//  StopWatch
//
//  Created by Gabriele on 3/18/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    var timer = NSTimer()
    var time = 0
    
    func result() {
        //print("1 second has passed")
        time += 1
        timerLabel.text = String(time)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startTimer(sender: UIBarButtonItem) {
       timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = String(time)
    }
    @IBAction func pauseTimer(sender: UIBarButtonItem) {
        timer.invalidate()
    }
}

