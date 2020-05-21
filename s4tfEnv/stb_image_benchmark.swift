//
//  stb_image_benchmark.swift
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

let url = URL(string: path)!
let expImage = Image.init(jpeg: url, byteOrdering: .rgb)

func openImage(url: URL) -> Tensor<UInt8> {
    let loadedFile = _Raw.readFile(filename: StringTensor(url.absoluteString))
    return _Raw.decodeJpeg(contents: loadedFile, channels: 3, dctMethod: "")
}

public func stbImageResizeOperation() {
    //image = openImage(url: url)
    //var expImage = Image.init(tensor: image)
    let _ = expImage.resized(to: (32, 32))
}

public func stbImageSaveOperation() {
    //image = openImage(url: url)
    //let expImage = Image.init(tensor: image)
    let url = URL(string: "/Users/ayush517/Downloads/stbSaved.jpeg")!
    expImage.save(to: url, format: .rgb, quality: 95)
}

public func stbImageBenchmark() {
    print("Resize Operation")
    benchmark(stbImageResizeOperation, iterations: 4700)
    print(" ")
    print("Save Operation")
    benchmark(stbImageSaveOperation, iterations: 400)
}
