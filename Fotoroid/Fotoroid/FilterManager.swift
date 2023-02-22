//
//  FilterManager.swift
//  Fotoroid
//
//  Created by Vinicius Loss on 22/02/23.
//

import UIKit

enum FilterType: Int {
    case comic
    case sepia
    case halftone
    case crystallize
    case vignette
    case noir
}

class FilterManager {

    let originalImage: UIImage
    let context = CIContext(options: nil)
    let filtersNames = [
        "CIComicEffect",
        "CISepiaTone",
        "CICMYHalftone",
        "CICrystallize",
        "CIVignette",
        "CIPhotoEffectNoir"
    ]
    
    init(image: UIImage) {
        self.originalImage = image
    }
    
    func applyFilter (type: FilterType) -> UIImage{
        
    }
}
