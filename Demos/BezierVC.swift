//
//  BezierVC.swift
//  Demos
//
//  Created by Jimmy on 17/7/2016.
//  Copyright © 2016 Jimmy. All rights reserved.
//

import UIKit


class BezierVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

class BezierView: UIView {
    var percent: CGFloat!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp() {
        percent = 0
    }
    
    override func draw(_ rect: CGRect) {
        
        var color = UIColor.red()
        color.set()
        
        var bezierPath = UIBezierPath(rect: CGRect(x: 10, y: 10, width: 50, height: 50))
        //线条拐角
        bezierPath.lineCapStyle = .round
        //终点处理
        bezierPath.lineJoinStyle = .round
        bezierPath.lineWidth = 2
        bezierPath.stroke()
        
        bezierPath = UIBezierPath(ovalIn: CGRect(x: 70, y: 10, width: 80, height: 50))
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.lineWidth = 3
        bezierPath.stroke()
        
        bezierPath = UIBezierPath(ovalIn: CGRect(x: 180, y: 10, width: 50, height: 50))
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.lineWidth = 3
        bezierPath.stroke()
        
        color = UIColor.purple()
        color.setFill()
        color = UIColor.green()
        color.setStroke()
        
        bezierPath = UIBezierPath()
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.lineWidth = 3
        bezierPath.move(to: CGPoint(x: 10, y: 100))
        bezierPath.addLine(to: CGPoint(x: 50, y: 150))
        bezierPath.addLine(to: CGPoint(x: 30, y: 150))
        
        bezierPath.stroke()
        bezierPath.move(to: CGPoint(x: 80, y: 100))
        bezierPath.addLine(to: CGPoint(x: 120, y: 150))
        bezierPath.addLine(to: CGPoint(x: 100, y: 150))
        bezierPath.stroke()
        bezierPath.fill()
        bezierPath.move(to: CGPoint(x: 150, y: 100))
        bezierPath.addLine(to: CGPoint(x: 190, y: 150))
        bezierPath.addLine(to: CGPoint(x: 170, y: 150))
        bezierPath.addLine(to: CGPoint(x: 150, y: 100))
        bezierPath.stroke()
        
 
        

        
    }
}
