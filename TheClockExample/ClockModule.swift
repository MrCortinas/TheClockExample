//
//  ClockModule.swift
//  TheClockExample
//
//  Created by GCortinas on 10/1/18.
//  Copyright © 2018 GCortinas. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class ClockModule : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawClock(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 260, height: 260), resizing: ResizingBehavior = .aspectFit, numbersColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), darkHandsColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), lightHandColor: UIColor = UIColor(red: 0.320, green: 0.800, blue: 0.638, alpha: 1.000), rimColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), tickColor: UIColor = UIColor(red: 0.668, green: 0.668, blue: 0.668, alpha: 1.000), faceColor: UIColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000), hours: CGFloat = 15, minutes: CGFloat = 9, seconds: CGFloat = 106) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 260, height: 260), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 260, y: resizedFrame.height / 260)



        //// Variable Declarations
        let expression = hours > 12 ? "PM" : "AM"
        let secondsAngle: CGFloat = -seconds / 60.0 * 360
        let minuteAngle: CGFloat = -(minutes / 60.0 * 360 - secondsAngle / 60.0)
        let hourAngle: CGFloat = -hours / 12.0 * 360 + minuteAngle / 12.0

        //// Group 7
        //// Oval 2 Drawing
        context.saveGState()
        context.translateBy(x: 130, y: 131)

        let oval2Path = UIBezierPath(ovalIn: CGRect(x: -116, y: -116, width: 232, height: 232))
        rimColor.setFill()
        oval2Path.fill()

        context.restoreGState()


        //// Oval Drawing
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: 130.67 * CGFloat.pi/180)

        let ovalPath = UIBezierPath(ovalIn: CGRect(x: -110, y: -110, width: 220, height: 220))
        faceColor.setFill()
        ovalPath.fill()

        context.restoreGState()


        //// Bezier Drawing
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -(minuteAngle + 90) * CGFloat.pi/180)

        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 7.07, y: -7.07))
        bezierPath.addCurve(to: CGPoint(x: 9.54, y: -3), controlPoint1: CGPoint(x: 8.25, y: -5.89), controlPoint2: CGPoint(x: 9.07, y: -4.49))
        bezierPath.addLine(to: CGPoint(x: 95, y: -3))
        bezierPath.addLine(to: CGPoint(x: 95, y: 3))
        bezierPath.addLine(to: CGPoint(x: 9.54, y: 3))
        bezierPath.addCurve(to: CGPoint(x: 7.07, y: 7.07), controlPoint1: CGPoint(x: 9.07, y: 4.49), controlPoint2: CGPoint(x: 8.25, y: 5.89))
        bezierPath.addCurve(to: CGPoint(x: -7.07, y: 7.07), controlPoint1: CGPoint(x: 3.17, y: 10.98), controlPoint2: CGPoint(x: -3.17, y: 10.98))
        bezierPath.addCurve(to: CGPoint(x: -7.07, y: -7.07), controlPoint1: CGPoint(x: -10.98, y: 3.17), controlPoint2: CGPoint(x: -10.98, y: -3.17))
        bezierPath.addCurve(to: CGPoint(x: 7.07, y: -7.07), controlPoint1: CGPoint(x: -3.17, y: -10.98), controlPoint2: CGPoint(x: 3.17, y: -10.98))
        bezierPath.close()
        darkHandsColor.setFill()
        bezierPath.fill()

        context.restoreGState()


        //// Bezier 2 Drawing
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -(hourAngle + 90) * CGFloat.pi/180)

        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 7.07, y: -7.07))
        bezier2Path.addCurve(to: CGPoint(x: 8.66, y: -5), controlPoint1: CGPoint(x: 7.7, y: -6.44), controlPoint2: CGPoint(x: 8.24, y: -5.74))
        bezier2Path.addLine(to: CGPoint(x: 56, y: -5))
        bezier2Path.addLine(to: CGPoint(x: 56, y: 5))
        bezier2Path.addLine(to: CGPoint(x: 8.66, y: 5))
        bezier2Path.addCurve(to: CGPoint(x: 7.07, y: 7.07), controlPoint1: CGPoint(x: 8.24, y: 5.74), controlPoint2: CGPoint(x: 7.7, y: 6.44))
        bezier2Path.addCurve(to: CGPoint(x: -7.07, y: 7.07), controlPoint1: CGPoint(x: 3.17, y: 10.98), controlPoint2: CGPoint(x: -3.17, y: 10.98))
        bezier2Path.addCurve(to: CGPoint(x: -7.07, y: -7.07), controlPoint1: CGPoint(x: -10.98, y: 3.17), controlPoint2: CGPoint(x: -10.98, y: -3.17))
        bezier2Path.addCurve(to: CGPoint(x: 7.07, y: -7.07), controlPoint1: CGPoint(x: -3.17, y: -10.98), controlPoint2: CGPoint(x: 3.17, y: -10.98))
        bezier2Path.close()
        darkHandsColor.setFill()
        bezier2Path.fill()

        context.restoreGState()


        //// Bezier 3 Drawing
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -(secondsAngle + 90) * CGFloat.pi/180)

        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 4.24, y: -4.24))
        bezier3Path.addCurve(to: CGPoint(x: 5.92, y: -1), controlPoint1: CGPoint(x: 5.16, y: -3.33), controlPoint2: CGPoint(x: 5.72, y: -2.19))
        bezier3Path.addLine(to: CGPoint(x: 99, y: -1))
        bezier3Path.addLine(to: CGPoint(x: 99, y: 1))
        bezier3Path.addLine(to: CGPoint(x: 5.92, y: 1))
        bezier3Path.addCurve(to: CGPoint(x: 4.24, y: 4.24), controlPoint1: CGPoint(x: 5.72, y: 2.19), controlPoint2: CGPoint(x: 5.16, y: 3.33))
        bezier3Path.addCurve(to: CGPoint(x: -4.24, y: 4.24), controlPoint1: CGPoint(x: 1.9, y: 6.59), controlPoint2: CGPoint(x: -1.9, y: 6.59))
        bezier3Path.addCurve(to: CGPoint(x: -4.24, y: -4.24), controlPoint1: CGPoint(x: -6.59, y: 1.9), controlPoint2: CGPoint(x: -6.59, y: -1.9))
        bezier3Path.addCurve(to: CGPoint(x: 4.24, y: -4.24), controlPoint1: CGPoint(x: -1.9, y: -6.59), controlPoint2: CGPoint(x: 1.9, y: -6.59))
        bezier3Path.close()
        lightHandColor.setFill()
        bezier3Path.fill()

        context.restoreGState()


        //// Group
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 127, y: 21, width: 6, height: 8))
        tickColor.setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 127, y: 233, width: 6, height: 8))
        tickColor.setFill()
        rectangle2Path.fill()




        //// Group 2
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: 90 * CGFloat.pi/180)



        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: -3, y: -110, width: 6, height: 8))
        tickColor.setFill()
        rectangle3Path.fill()


        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: -3, y: 102, width: 6, height: 8))
        tickColor.setFill()
        rectangle4Path.fill()



        context.restoreGState()


        //// Group 3
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -30 * CGFloat.pi/180)



        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: -3, y: -110, width: 6, height: 8))
        tickColor.setFill()
        rectangle5Path.fill()


        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRect(x: -3, y: 102, width: 6, height: 8))
        tickColor.setFill()
        rectangle6Path.fill()



        context.restoreGState()


        //// Group 4
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -60 * CGFloat.pi/180)



        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(rect: CGRect(x: -3, y: -110, width: 6, height: 8))
        tickColor.setFill()
        rectangle7Path.fill()


        //// Rectangle 8 Drawing
        let rectangle8Path = UIBezierPath(rect: CGRect(x: -3, y: 102, width: 6, height: 8))
        tickColor.setFill()
        rectangle8Path.fill()



        context.restoreGState()


        //// Group 5
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -120 * CGFloat.pi/180)



        //// Rectangle 9 Drawing
        let rectangle9Path = UIBezierPath(rect: CGRect(x: -3, y: -110, width: 6, height: 8))
        tickColor.setFill()
        rectangle9Path.fill()


        //// Rectangle 10 Drawing
        let rectangle10Path = UIBezierPath(rect: CGRect(x: -3, y: 102, width: 6, height: 8))
        tickColor.setFill()
        rectangle10Path.fill()



        context.restoreGState()


        //// Group 6
        context.saveGState()
        context.translateBy(x: 130, y: 131)
        context.rotate(by: -150 * CGFloat.pi/180)



        //// Rectangle 11 Drawing
        let rectangle11Path = UIBezierPath(rect: CGRect(x: -3, y: -110, width: 6, height: 8))
        tickColor.setFill()
        rectangle11Path.fill()


        //// Rectangle 12 Drawing
        let rectangle12Path = UIBezierPath(rect: CGRect(x: -3, y: 102, width: 6, height: 8))
        tickColor.setFill()
        rectangle12Path.fill()



        context.restoreGState()


        //// Text 2 Drawing
        let text2Rect = CGRect(x: 111, y: 199, width: 38, height: 40)
        let text2TextContent = "6"
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .center
        let text2FontAttributes = [
            .font: UIFont(name: "AvenirNext-DemiBold", size: 25)!,
            .foregroundColor: numbersColor,
            .paragraphStyle: text2Style,
        ] as [NSAttributedStringKey: Any]

        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()


        //// Text 3 Drawing
        let text3Rect = CGRect(x: 201, y: 111, width: 38, height: 40)
        let text3TextContent = "3"
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .center
        let text3FontAttributes = [
            .font: UIFont(name: "AvenirNext-DemiBold", size: 25)!,
            .foregroundColor: numbersColor,
            .paragraphStyle: text3Style,
        ] as [NSAttributedStringKey: Any]

        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context.restoreGState()


        //// Text 4 Drawing
        let text4Rect = CGRect(x: 22, y: 111, width: 38, height: 40)
        let text4TextContent = "9"
        let text4Style = NSMutableParagraphStyle()
        text4Style.alignment = .center
        let text4FontAttributes = [
            .font: UIFont(name: "AvenirNext-DemiBold", size: 25)!,
            .foregroundColor: numbersColor,
            .paragraphStyle: text4Style,
        ] as [NSAttributedStringKey: Any]

        let text4TextHeight: CGFloat = text4TextContent.boundingRect(with: CGSize(width: text4Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text4FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text4Rect)
        text4TextContent.draw(in: CGRect(x: text4Rect.minX, y: text4Rect.minY + (text4Rect.height - text4TextHeight) / 2, width: text4Rect.width, height: text4TextHeight), withAttributes: text4FontAttributes)
        context.restoreGState()


        //// Text 13 Drawing
        let text13Rect = CGRect(x: 99, y: 145, width: 62, height: 34)
        let text13Style = NSMutableParagraphStyle()
        text13Style.alignment = .center
        let text13FontAttributes = [
            .font: UIFont(name: "AvenirNext-DemiBold", size: 20)!,
            .foregroundColor: numbersColor,
            .paragraphStyle: text13Style,
        ] as [NSAttributedStringKey: Any]

        let text13TextHeight: CGFloat = expression.boundingRect(with: CGSize(width: text13Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text13FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text13Rect)
        expression.draw(in: CGRect(x: text13Rect.minX, y: text13Rect.minY + (text13Rect.height - text13TextHeight) / 2, width: text13Rect.width, height: text13TextHeight), withAttributes: text13FontAttributes)
        context.restoreGState()


        //// Text 5 Drawing
        let text5Rect = CGRect(x: 117, y: 34, width: 38, height: 38)
        let text5TextContent = "12"
        let text5Style = NSMutableParagraphStyle()
        text5Style.alignment = .left
        let text5FontAttributes = [
            .font: UIFont(name: "AvenirNext-Bold", size: 25)!,
            .foregroundColor: numbersColor,
            .paragraphStyle: text5Style,
        ] as [NSAttributedStringKey: Any]

        let text5TextHeight: CGFloat = text5TextContent.boundingRect(with: CGSize(width: text5Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text5FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text5Rect)
        text5TextContent.draw(in: CGRect(x: text5Rect.minX, y: text5Rect.minY + (text5Rect.height - text5TextHeight) / 2, width: text5Rect.width, height: text5TextHeight), withAttributes: text5FontAttributes)
        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawClockPlayground(numbersColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), darkHandsColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), lightHandColor: UIColor = UIColor(red: 0.320, green: 0.800, blue: 0.638, alpha: 1.000), rimColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), tickColor: UIColor = UIColor(red: 0.668, green: 0.668, blue: 0.668, alpha: 1.000), faceColor: UIColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let color = UIColor(red: 1.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let color2 = UIColor(red: 0.219, green: 0.373, blue: 0.457, alpha: 1.000)
        let color3 = UIColor(red: 0.290, green: 0.290, blue: 0.290, alpha: 1.000)
        let color4 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let color5 = UIColor(red: 0.086, green: 0.846, blue: 0.850, alpha: 1.000)

        //// Symbol Drawing
        let symbolRect = CGRect(x: 47, y: 35, width: 137, height: 140)
        context.saveGState()
        context.clip(to: symbolRect)
        context.translateBy(x: symbolRect.minX, y: symbolRect.minY)

        ClockModule.drawClock(frame: CGRect(origin: .zero, size: symbolRect.size), resizing: .stretch, numbersColor: color5, darkHandsColor: color2, lightHandColor: color, rimColor: color2, tickColor: tickColor, faceColor: faceColor, hours: 11, minutes: 45, seconds: 39)
        context.restoreGState()


        //// Symbol 2 Drawing
        let symbol2Rect = CGRect(x: 348, y: 33, width: 253, height: 253)
        context.saveGState()
        context.clip(to: symbol2Rect)
        context.translateBy(x: symbol2Rect.minX, y: symbol2Rect.minY)

        ClockModule.drawClock(frame: CGRect(origin: .zero, size: symbol2Rect.size), resizing: .stretch, numbersColor: numbersColor, darkHandsColor: darkHandsColor, lightHandColor: lightHandColor, rimColor: rimColor, tickColor: tickColor, faceColor: faceColor, hours: 7, minutes: 43, seconds: 3)
        context.restoreGState()


        //// Symbol 3 Drawing
        let symbol3Rect = CGRect(x: 601, y: 33, width: 260, height: 260)
        context.saveGState()
        context.clip(to: symbol3Rect)
        context.translateBy(x: symbol3Rect.minX, y: symbol3Rect.minY)

        ClockModule.drawClock(frame: CGRect(origin: .zero, size: symbol3Rect.size), resizing: .stretch, numbersColor: color4, darkHandsColor: color4, lightHandColor: color5, rimColor: color4, tickColor: color4, faceColor: color3, hours: 16, minutes: 6, seconds: 43)
        context.restoreGState()
    }




    @objc(ClockModuleResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}