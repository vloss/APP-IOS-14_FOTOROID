//
//  FinalViewController.swift
//  Fotoroid
//
//  Created by Vinicius Loss on 21/02/23.
//

import UIKit
import Photos

class FinalViewController: UIViewController {

    @IBOutlet weak var ivPhoto: UIImageView!

    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image
        ivPhoto.layer.borderWidth = 10
        ivPhoto.layer.borderColor = UIColor.white.cgColor
    }

    func saveToAlbum(){
        PHPhotoLibrary.shared().performChanges {
            // request para criar uma imagem
            let creationRequest = PHAssetChangeRequest.creationRequestForAsset(from: self.image)

            // request para adicionar a imagem em uma coleção
            let addAssetRequest = PHAssetCollectionChangeRequest()

            addAssetRequest.addAssets([creationRequest.placeholderForCreatedAsset!] as NSArray)

        } completionHandler: { (success, error) in
            if !success {
                print(error!.localizedDescription)
            } else {
//                let alert = UIAlertController(title: "Imagem Salva", message: "Sua imagem foi salva no álbum de fotos.", preferredStyle: .alert)
//                let okAction = UIAlertAction(title: "Ok", style: .cancel)
//                alert.addAction(okAction)
//                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
        PHPhotoLibrary.requestAuthorization { (status) in
            switch status {
                case .authorized:
                    self.saveToAlbum()
                default:
                    let alert = UIAlertController(title: "ERRO", message: "Você precisa autorizar o acesso ao álbum para salvar sua foto", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Ok", style: .cancel)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func restart(_ sender: UIButton) {
        // retorna para primeira tela.
        navigationController?.popToRootViewController(animated: true)
    }
}
