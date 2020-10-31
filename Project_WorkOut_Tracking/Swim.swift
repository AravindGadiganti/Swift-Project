//
//  Swim.swift
//  Project_WorkOut_Tracking
//
//  Created by Aravind Gadiganti on 31/10/20.
//  Copyright © 2020 Aravind Gadiganti. All rights reserved.
//

import Foundation

class Swim : Workout{
    override init(_ a: Double, _ b: Double) {
        super.init(a, b)
       }
    
    
    func describeSwim(_ swimmingWorkout: Swim){
        var speed : Double
        var minutes : Double
        var SSPM : Double
        minutes = duration/60
        SSPM = minutes * 105
        speed = distance/duration
         let swimtime = String(format: "Value: %.2f", minutes)
         let swimspeed = String(format: "Value: %.2f", speed)
        let swimsspm = String(format: "Value: %.2f", SSPM)
        let logData : String = "You swam \(swimsspm) steps in \(swimtime) minutes at a speed of \(swimspeed) m/s"
         print(logData)
    }
}
