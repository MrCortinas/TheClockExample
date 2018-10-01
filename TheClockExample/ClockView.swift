//
//  ClockView.swift
//  TheClockExample
//
//  Created by GCortinas on 9/28/18.
//  Copyright © 2018 GCortinas. All rights reserved.
//

import Foundation
import UIKit

class ClockView: UIView {
    
    
    ///color configuration
    var numbersColor:UIColor
    var darkHandsColor:UIColor
    var lightHandColor:UIColor
    var rimColor:UIColor
    var tickColor:UIColor
    var faceColor: UIColor
    
    ///time setup
    private var hours: CGFloat
    private var minutes: CGFloat
    private var seconds: CGFloat
    
    override init(frame: CGRect) {
        numbersColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        darkHandsColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        lightHandColor = UIColor(red: 0.320, green: 0.800, blue: 0.638, alpha: 1.000)
        rimColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        tickColor = UIColor(red: 0.668, green: 0.668, blue: 0.668, alpha: 1.000)
        faceColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        hours = 12
        minutes = 0
        seconds = 0
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func updateClock(_ newHours:CGFloat, _ newMinutes:CGFloat, _ newSeconds:CGFloat) {
        self.hours = newHours
        self.minutes = newMinutes
        self.seconds = newSeconds
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        
        //// Symbol Drawing
        context.saveGState()
        context.clip(to: rect)
        context.translateBy(x: rect.minX, y: rect.minY)
        
        ClockModule.drawClock(frame: CGRect(origin: .zero, size: rect.size), resizing: .stretch, numbersColor: numbersColor, darkHandsColor: darkHandsColor, lightHandColor: lightHandColor, rimColor: rimColor, tickColor: tickColor, faceColor: faceColor, hours: hours, minutes: minutes, seconds: seconds)
        context.restoreGState()
    }

}
