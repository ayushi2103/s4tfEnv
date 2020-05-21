//
//  main.swift
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
import Benchmark

struct MLPClassifier {
    var w1 = Tensor<Float>(repeating: 0.1, shape: [2, 4])
    var w2 = Tensor<Float>(shape: [4, 1], scalars: [0.4, -0.5, -0.5, 0.4])
    var b1 = Tensor<Float>([0.2, -0.3, -0.3, 0.2])
    var b2 = Tensor<Float>([[0.4]])

    func prediction(for x: Tensor<Float>) -> Tensor<Float> {
        let o1 = tanh(matmul(x, w1) + b1)
        return tanh(matmul(o1, w2) + b2)
    }
}
let input = Tensor<Float>([[0.2, 0.8]])
let classifier = MLPClassifier()
let prediction = classifier.prediction(for: input)
print(prediction)

let np = Python.import("numpy")
let plt = Python.import("matplotlib.pyplot")
let path = "/Users/ayush517/Downloads/tiger.jpg"

//let dirPath = FileManager.default.homeDirectoryForCurrentUser
//print(dirPath)

print("Using google/swift-benchmark")
print("")
benchmark("stb_image Resize operation") {
    stbImageResizeOperation()
}
benchmark("stb_image Save operation") {
    stbImageSaveOperation()
}

benchmark("pil Resize Operation") {
    pilResizeOperation()
}
benchmark("pil Save Operation") {
    pilSaveOperation()
}
benchmark("pil Transpose Operation") {
    pilTransposeOperation()
}
benchmark("pil Crop Operation") {
    pilCropOperation()
}

benchmark("skimage Resize Operation", settings: .iterations(400)) {
    skimageResizeOperation()
}
benchmark("skimage Save Operation", settings: .iterations(400)) {
    skimageSaveOperation()
}
benchmark("skimage Transpose Operation", settings: .iterations(400)) {
    skimageTransposeOperation()
}
benchmark("skimage Crop Operation", settings: .iterations(400)) {
    skimageCropOperation()
}

Benchmark.main()

print(" ------------------------------------------------------------------- ")
print("Using own benchmark")
print("")
print("stb_image Operations")
stbImageBenchmark()
print(" --------------------------- ")
print("PIL Operations")
pilBenchmark()
print(" --------------------------- ")
print("skimage Operations")
skimageBenchmark()
print(" --------------------------- ")

