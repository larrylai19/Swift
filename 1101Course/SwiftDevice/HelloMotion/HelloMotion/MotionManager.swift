//
//  MotionManager.swift
//  HelloMotion
//
//  Created by Larry - 1024 on 2021/12/21.
//

import Foundation
import Combine
import CoreMotion
import UIKit

class MotionManager: ObservableObject {
    private var motionManager: CMMotionManager
    
    @Published var x = 0.0
    @Published var y = 0.0
    @Published var z = 0.0
    
    init() {
        self.motionManager = CMMotionManager()
        //self.motionManager.magnetometerUpdateInterval = 1 / 60
        self.motionManager.accelerometerUpdateInterval = 1 / 60
        self.motionManager.startAccelerometerUpdates(to: .main) { (accelerometerData, error) in
            guard error == nil else {
                print(error)
                return
            }
            
            if let accelerometerData = accelerometerData {
                self.x = accelerometerData.acceleration.x
                self.y = accelerometerData.acceleration.y
                self.z = accelerometerData.acceleration.z
            }
        }
    }
}
