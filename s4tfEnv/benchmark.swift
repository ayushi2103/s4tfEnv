//
//  benchmark.swift
//  s4tfEnv
//
//  Created by Ayush Agrawal on 15/05/20.
//  Copyright © 2020 Ayush Agrawal. All rights reserved.
//

import TensorFlow
import Datasets
import Foundation
import STBImage
import PythonKit

func timer(_ body: () -> Void) -> Double {

    let start = DispatchTime.now() // <<<<<<<<<< Start time
    body()
    let end = DispatchTime.now()   // <<<<<<<<<<   end time

    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
    let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests

    print("Time : \(timeInterval) seconds")
    return timeInterval
}

func benchmark(_ body: () -> Void) {
    var maxTime:Double = 0
    var minTime:Double = 10
    var avgTime:Double = 0
    for _ in 0..<10 {
        let time = timer(body)
        maxTime = max(maxTime, time)
        minTime = min(minTime, time)
        avgTime += time/10
    }
    print("Minimum Time : \(minTime)")
    print("Maximum Time : \(maxTime)")
    print("Average Time : \(avgTime)")
}
