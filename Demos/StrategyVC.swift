//
//  StrategyVC.swift
//  Demos
//
//  Created by Jimmy on 17/7/2016.
//  Copyright © 2016 Jimmy. All rights reserved.
//

import UIKit


class StrategyVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let car = HMCar(name: "Car")
        _ = HMBoart(name: "Boart")
        _ = HMPlan(name: "Plan")
        
        let context = HMContext(traffic: car)
        let aa = context.name
        
        print(aa)
    }
    
}

class HMTraffic: NSObject {
    
}

class HMCar: HMTraffic {
    var carName = "car"
    init(name: String) {
        carName = name
    }
}

class HMBoart: HMTraffic {
    var boartName = "boart"
    init(name: String) {
        boartName = name
    }
}

class HMPlan: HMTraffic {
    var planName = "plan"
    init(name: String) {
        planName = name
    }
}

enum HMStrategy {
    case car
    case boart
    case plan
}

class HMContext {
    
    var traffic: HMTraffic?
    var strategy: HMStrategy?
    var strategyDelegate: HMBasicStrategy?
    
    init(traffic: HMTraffic) {
        self.traffic = traffic
        
        if traffic is HMCar {
            strategy = .car
            strategyDelegate = HMCarStrategy(object: traffic)
        } else if traffic is HMBoart {
            strategy = .boart
            strategyDelegate = HMBoartStrategy(object: traffic)
        } else if traffic is HMPlan {
            strategy = .plan
            strategyDelegate = HMPlanStrategy(object: traffic)
        }
    }
    
    var name: String? {
        get {
            return strategyDelegate?.name
        }
    }
    
}

protocol HMBasicStrategyDelegate {
    var name: String { get }
}



class HMBasicStrategy: NSObject, HMBasicStrategyDelegate {
    
    var name: String { return "" }
    
    init(object: HMTraffic) {
        
    }
}

class HMCarStrategy: HMBasicStrategy {
    var car: HMCar?
    
    override init(object: HMTraffic) {
        super.init(object: object)
        car = object as? HMCar
    }
    
    override var name: String { return car?.carName ?? "unknown" }
    
}

class HMBoartStrategy: HMBasicStrategy {
    var boart: HMBoart?
    
    override init(object: HMTraffic) {
        super.init(object: object)
        boart = object as? HMBoart
    }
    
    override var name: String { return boart?.boartName ?? "unknown" }
    
}

class HMPlanStrategy: HMBasicStrategy {
    var plan: HMPlan?
    
    override init(object: HMTraffic) {
        super.init(object: object)
        plan = object as? HMPlan
    }
    
    override var name: String { return plan?.planName ?? "unknown" }
    
}
