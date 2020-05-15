//
//  showImgeTensorImage.swift
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


public func oneAxes() -> PythonObject {
    plt.figure()
    return plt.subplot(1, 1, 1)
}

func showTensorImage<S> (_ image: Tensor<S>, title: String? = nil, pltAxes: PythonObject? = nil) where S: NumpyScalarCompatible {
    let numpyImage = image.makeNumpyArray()
    let axes = pltAxes ?? oneAxes()
    axes.imshow(numpyImage)
    axes.axis("off")
    if title != nil { axes.set_title(title!) }
    if pltAxes == nil { plt.show() }
}
