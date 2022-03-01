//
//  MemoryManagement.swift
//  PushUpChallenge
//
//  Created by Mutlu Aydin on 2/16/22.
//

import Foundation
import UIKit

class MemoryManagement {
    
    var pushUpLeft = 100
    var challengeStarted = false
    
    let defaults = UserDefaults.standard

    func firstTime () {
        
        if defaults.object(forKey: "pushUp") != nil {
            self.pushUpLeft = defaults.object(forKey: "pushUp") as! Int
        }else {
            self.defaults.set(100, forKey: "pushUp")
        }
    }
    
    func challengeStartedFunc() -> Bool {
        challengeStarted = false
        return challengeStarted
    }
    
    func onePushUpCompleted() -> Int {
        
        pushUpLeft -= 1
        
        return pushUpLeft
    }
}
