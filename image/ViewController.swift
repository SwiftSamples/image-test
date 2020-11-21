//
//  ViewController.swift
//  image
//
//  Created by Swapna Botta on 27/10/20.
//

import UIKit
import GSImageViewerController
class ViewController: UIViewController {

    @IBOutlet weak var tapImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        tapImage.isUserInteractionEnabled = true
        tapImage.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
      //  let tappedImage = tapGestureRecognizer.view as! UIImageView
        let imageInfo = GSImageInfo(image: tapImage.image!, imageMode: .aspectFit)
        let transitionInfo = GSTransitionInfo(fromView: tapImage)
        
        let imageViewer    = GSImageViewerController(imageInfo: imageInfo, transitionInfo: transitionInfo)
    
        present(imageViewer, animated: true, completion: nil)
    }
        
//        let tappedImage = tapGestureRecognizer.view as! UIImageView
//        let newImageView = UIImageView(image: tappedImage.image)
//        newImageView.frame = UIScreen.main.bounds
//        newImageView.backgroundColor = .black
//        newImageView.contentMode = .scaleAspectFit
//        newImageView.isUserInteractionEnabled = true
//        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
//        newImageView.addGestureRecognizer(tap)
//        self.view.addSubview(newImageView)
//        self.navigationController?.isNavigationBarHidden = true
//        self.tabBarController?.tabBar.isHidden = true
//    }
//
//    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
//        self.navigationController?.isNavigationBarHidden = false
//        self.tabBarController?.tabBar.isHidden = false
//        sender.view?.removeFromSuperview()
//    }


}
















