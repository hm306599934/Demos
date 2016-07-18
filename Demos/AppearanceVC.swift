//
//  AppearanceVC.swift
//  Demos
//
//  Created by Jimmy on 18/7/2016.
//  Copyright © 2016 Jimmy. All rights reserved.
//

import UIKit

class AppearanceVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cabDriver = CabDriver()
        cabDriver.driveToLocation(location: "lalala")
    }
    
}

//司机，司机作为外观将计价器和汽车联系起来，计价器和汽车是分离出来的子系统
class CabDriver: NSObject {
    
    func driveToLocation(location: String) {
        let textimeter = Taximeter()
        textimeter.start()
        
        let car = Car()
        car.changeGears()
        car.pressBreak()
        car.changeGears()
        
        textimeter.stop()
        print("it is \(location)")
    }
    
}

//计价器
class Taximeter: NSObject {
    
    func start() {
        print("start")
    }
    
    func stop() {
        print("stop")
    }
    
}

//汽车
class Car: NSObject {
    
    func pressBreak() {
        print("press the break")
    }
    
    func changeGears() {
        print("change the gears")
    }
    
}
