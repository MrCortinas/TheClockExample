//
//  ViewController.swift
//  TheClockExample
//
//  Created by GCortinas on 9/28/18.
//  Copyright © 2018 GCortinas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myClockView: UIView!
    @IBOutlet weak var mySmallViewCOntroller: UIView!
    @IBOutlet weak var myMediumClockView: UIView!
    
    var clockTimer: Timer?
    var clockView: ClockView?
    var clockSmallView: ClockView?
    var clockMediumView: ClockView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        clockTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimedCode), userInfo: nil, repeats: true)
        
        clockView = ClockView(frame: CGRect(x: 0, y: 0, width: myClockView.frame.width, height: myClockView.frame.height))
        clockView?.backgroundColor = myClockView.backgroundColor
        myClockView.addSubview(clockView!)
        
        clockSmallView = ClockView(frame: CGRect(x: 0, y: 0, width: mySmallViewCOntroller.frame.width, height: mySmallViewCOntroller.frame.height))
        clockSmallView?.backgroundColor = mySmallViewCOntroller.backgroundColor
        mySmallViewCOntroller.addSubview(clockSmallView!)
        
        clockMediumView = ClockView(frame: CGRect(x: 0, y: 0, width: myMediumClockView.frame.width, height: myMediumClockView.frame.height))
        clockMediumView?.backgroundColor = myMediumClockView.backgroundColor
        myMediumClockView.addSubview(clockMediumView!)
        
        
    }
    
    /// update clock image
    @objc func runTimedCode(){
        
        let date = Date()
        let calendar = Calendar.current
        let hour:   CGFloat = CGFloat(calendar.component(.hour, from: date))
        let minutes:CGFloat = CGFloat(calendar.component(.minute, from: date))
        let seconds:CGFloat = CGFloat(calendar.component(.second, from: date))
        
        print("tic toc \(date)\nH: \(hour)\nM: \(minutes)\nS: \(seconds)")
        
        clockView?.lightHandColor = randomColor()
        clockView?.updateClock(hour, minutes, seconds)
        
        clockSmallView?.faceColor = randomColor()
        clockSmallView?.rimColor = randomColor()
        clockSmallView?.lightHandColor = randomColor()
        clockSmallView?.numbersColor = randomColor()
        clockSmallView?.tickColor = randomColor()
        clockSmallView?.darkHandsColor = randomColor()
        clockSmallView?.updateClock(hour, minutes, seconds)
        
        let newColor = randomColor()
        clockMediumView?.darkHandsColor = newColor
        clockMediumView?.lightHandColor = randomColor()
        clockMediumView?.tickColor = newColor
        clockMediumView?.numbersColor = newColor
        clockMediumView?.updateClock(hour, minutes, seconds)
        
    }
    
    /// provided random color
    func randomColor(alpha:CGFloat = 1) -> UIColor {
        
        /// radom colo generation
        let red:  CGFloat = CGFloat(Double(arc4random_uniform(256)) / 255.0)
        let green:CGFloat = CGFloat(Double(arc4random_uniform(256)) / 255.0)
        let blue: CGFloat = CGFloat(Double(arc4random_uniform(256)) / 255.0)
        return UIColor(displayP3Red: red, green: green, blue: blue, alpha: alpha)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        clockTimer?.invalidate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

