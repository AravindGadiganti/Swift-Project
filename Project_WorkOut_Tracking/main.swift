//
//  main.swift
//  Project_WorkOut_Tracking
//
//  Created by Aravind Gadiganti on 31/10/20.
//  Copyright © 2020 Aravind Gadiganti. All rights reserved.
//

import Foundation


var logDisplay = [Workout]()
//For displaying Previous workout logs
logDisplay.append(Run(100,22))
logDisplay.append(Swim(500,55))

func calculateWorkout(){
print("Choose an Workout Activity: \n 1.Run \n 2.Swim \n 3.Workout log \n 0.Exit")
    let option = readLine()
    var _:Int = -1
switch option {
       case "1":
         print("Enter the distance(in meters) walked")
         let a = readLine()!
         print("Enter the duration(in seconds) walked")
         let b = readLine()!
         let run = Run(Double(a)!, Double(b)!)
         logDisplay.append(run)
         run.describeRun(run)
         calculateWorkout()
       case "2":
        print("Enter the distance(in meters) swim")
        let distance = readLine()!
        print("Enter the duration(in seconds) swim")
        let time = readLine()!
        let swim = Swim(Double(distance)!, Double(time)!)
        logDisplay.append(swim)
        swim.describeSwim(swim)
        calculateWorkout()
        case "3":
            print("Previous Workouts:")
           for workout in logDisplay{
                if let run = workout as? Run {
                    run.describeRun(workout as! Run)
                }
                else if let swim = workout as? Swim{
                    swim.describeSwim(workout as! Swim)
                }
            }
        calculateWorkout()
        case "0":
        print("Exit from System")
    

       default:
           print("System closed")
       }
}
//WorkOut Application
print("--**-- Welcome to workout Application --**--")
calculateWorkout()



