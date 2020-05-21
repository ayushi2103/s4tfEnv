//
//  pil_benchmark.swift
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

let pil = Python.import("PIL")
let pilImage = Python.import("PIL.Image")
let pilImageOps = Python.import("PIL.ImageOps")

let pilImg = pilImage.open(path)

public func pilResizeOperation() {
    let _ = pilImg.resize([32, 32])
}

public func pilSaveOperation() {
    let _ = pilImg.save("/Users/ayush517/Downloads/pilSaved.jpeg")
}

public func pilTransposeOperation() {
    let _ = pilImg.transpose(pilImage.TRANSPOSE)
}

public func pilCropOperation() {
    let h = Float(pilImg.size[0])! / 4
    let w = Float(pilImg.size[1])! / 4
    let cropBorder = Int(Python.min(h, w))
    let _ = pilImageOps.crop(pilImg, cropBorder)
}

public func pilBenchmark() {
    print("Resize Operation")
    benchmark(pilResizeOperation, iterations: 800)
    print(" ")
    print("Save Operation")
    benchmark(pilSaveOperation, iterations: 400)
    print(" ")
    print("Transpose Operation")
    benchmark(pilTransposeOperation, iterations: 6000)
    print(" ")
    print("Crop Operation")
    benchmark(pilCropOperation, iterations: 325000)
}
