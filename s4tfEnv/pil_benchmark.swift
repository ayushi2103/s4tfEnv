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

public func pilResizeOperation() {
    var img = pilImage.open(path)
    img = img.resize([32, 32])
}

public func pilSaveOperation() {
    var img = pilImage.open(path)
    img = img.save("/Users/ayush517/Downloads/pilSaved.jpeg")
}

public func pilTransposeOperation() {
    var img = pilImage.open(path)
    img = img.transpose(pilImage.TRANSPOSE)
}

public func pilCropOperation() {
    var img = pilImage.open(path)
    let h = Float(img.size[0])! / 4
    let w = Float(img.size[1])! / 4
    let cropBorder = Int(Python.min(h, w))
    img = pilImageOps.crop(img,  cropBorder)
}

public func pilBenchmark() {
    print("Resize Operation")
    benchmark(pilResizeOperation)
    print(" ")
    print("Save Operation")
    benchmark(pilSaveOperation)
    print(" ")
    print("Transpose Operation")
    benchmark(pilTransposeOperation)
    print(" ")
    print("Crop Operation")
    benchmark(pilCropOperation)
}
