//
//  numberOfPlatform.swift
//  UiGestureDemo
//
//  Created by mac admin on 22/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import Foundation


var trainArrivals = [900, 940, 950, 1100, 1500, 1800].sorted()
var trainDepts  = [910, 1200, 1120, 1130, 1900, 2000].sorted()



var numOfplatform = 1
var result = 1
func checkPlatformAvailability() {
    var i = 1
    var j = 0
    while i < trainArrivals.count ,   j < trainDepts.count {
        if trainArrivals[i] <= trainDepts[j] {
            numOfplatform += 1
            i += 1
        }
        
        else if trainArrivals[i] > trainDepts[j] {
            numOfplatform -= 1
            j += 1
        }
        
        if numOfplatform > result {
            result = numOfplatform
        }
    }
    print(result)
}

//checkPlatformAvailability()

