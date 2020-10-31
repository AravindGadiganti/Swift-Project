//
//  Run.swift
//  Project_WorkOut_Tracking
//
//  Created by Aravind Gadiganti on 31/10/20.
//  Copyright © 2020 Aravind Gadiganti. All rights reserved.
//

import Foundation

class Run : Workout{

    override init(_ a: Double, _ b: Double) {
        super.init(a, b)
      }

    func describeRun(_ runningWorkout: Run){
           var speed : Double
           var minutes : Double
           var RSPM : Double
           minutes = duration/60
           RSPM = minutes * 105
           speed = distance/duration
           let runtime = String(format: "%.2f", minutes)
           let runspeed = String(format: "%.2f", speed)
           let runsspm = String(format: "%.2f", RSPM)
           let logData : String = "You walked \(runsspm) steps in \(runtime) minutes at a speed of \(runspeed) m/s "
           print(logData)
           
       }
    
}
