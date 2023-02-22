//
//  EffectsViewController.swift
//  Fotoroid
//
//  Created by Vinicius Loss on 21/02/23.
//

import UIKit

class EffectsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viLoading: UIView!
    @IBOutlet weak var ivPhoto: UIImageView!
    
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image
    }
    
    // Vai aparecer
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
