//
//  skimage_benchmark.swift
//  s4tfEnv
//
//  Created by Ayush Agrawal on 17/05/20.
//  Copyright © 2020 Ayush Agrawal. All rights reserved.
//

import TensorFlow
import Datasets
import Foundation
import STBImage
import PythonKit

let sk = Python.import("skimage")
let skio = Python.import("skimage.io")
let sktransform = Python.import("skimage.transform")
let skutil = Python.import("skimage.util")

let skImg:PythonObject = skio.imread(path)

public func skimageResizeOperation() {
    let _ = sktransform.resize(skImg, [32, 32])
}

public func skimageSaveOperation() {
    let fname = "/Users/ayush517/Downloads/skimageSaved.jpeg"
    let _ = skio.imsave(fname, skImg)
}


public func skimageTransposeOperation() {
    let _ = sktransform.rotate(skImg, 90)
}

public func skimageCropOperation() {
    let h = Float(skImg.shape[0])! / 4
    let w = Float(skImg.shape[1])! / 4
    let _ = skutil.crop(skImg, [[h, h], [w, w], [0, 0]])
}

public func skimageBenchmark() {
    print("Resize Operation")
    benchmark(skimageResizeOperation, iterations: 400)
    print(" ")
    print("Save Operation")
    benchmark(skimageSaveOperation, iterations: 400)
    print(" ")
    print("Transpose Operation")
    benchmark(skimageTransposeOperation, iterations: 400)
    print(" ")
    print("Crop Operation")
    benchmark(skimageCropOperation, iterations: 400)
}
