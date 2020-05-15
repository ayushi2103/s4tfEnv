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

let np = Python.import("numpy")  // Make numpy available using np.
let plt = Python.import("matplotlib.pyplot")

let path = "/Users/ayush517/Downloads/parrot.jpg"
let url = URL(string: path)!

func openImage(url: URL) -> Tensor<UInt8> {
    let loadedFile = _Raw.readFile(filename: StringTensor(url.absoluteString))
    return _Raw.decodeJpeg(contents: loadedFile, channels: 3, dctMethod: "")
    
}

let image = openImage(url: url)

public func stbImageResizeOperation() {
    var expImage = Image.init(tensor: image)
    expImage = expImage.resized(to: (32, 32))
}

public func stbImageSaveOperation() {
    let expImage = Image.init(tensor: image)
    let url = URL(string: "saved.jpeg")!
    expImage.save(to: url, format: .rgb, quality: 95)
}
