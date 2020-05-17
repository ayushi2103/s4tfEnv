//
//  scipy_benchmark.swift
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

public func scipyResizeOperation() {
    img = skio.imread(path)
    img = sktransform.resize(img, [32, 32])
}

public func scipySaveOperation() {
    img = skio.imread(path)
    let fname = "/Users/ayush517/Downloads/scipySaved.jpeg"
    img = skio.imsave(fname, img)
}


public func scipyTransposeOperation() {
    img = skio.imread(path)
    img = sktransform.rotate(img, 90)
}

public func scipyCropOperation() {
    img = skio.imread(path)
    let h = Float(img.shape[0])! / 4
    let w = Float(img.shape[1])! / 4
    img = skutil.crop(img, [[h, h], [w, w], [0, 0]])
}

public func scipyBenchmark() {
    print("Resize Operation")
    benchmark(scipyResizeOperation)
    print(" ")
    print("Save Operation")
    benchmark(scipySaveOperation)
    print(" ")
    print("Transpose Operation")
    benchmark(scipyTransposeOperation)
    print(" ")
    print("Crop Operation")
    benchmark(scipyCropOperation)
}
