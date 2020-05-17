//
//  main.swift
//  s4tfEnv
//
//  Created by Ayush Agrawal on 15/05/20.
//  Copyright © 2020 Ayush Agrawal. All rights reserved.
//


import TensorFlow
import PythonKit
import Foundation

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

let path = "/Users/ayush517/Downloads/parrot.jpg"
var image: Tensor<UInt8>
var img: PythonObject

//let dirPath = FileManager.default.homeDirectoryForCurrentUser
//print(dirPath)

//showTensorImage(image, title: "test")
print("stb_image Operations")
stbImageBenchmark()
print(" ")
print("PIL Operations")
pilBenchmark()
