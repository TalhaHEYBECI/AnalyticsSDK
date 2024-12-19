//
//  FeatureViewController.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//

import Foundation
import UIKit
import SDWebImage

class FeatureViewController: UIViewController {
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        loadHighResImages()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            imageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
    }
    
    private func loadHighResImages() {
        // Simüle edilmiş yüksek çözünürlüklü görüntü yükleme
        let imageURL = URL(string: "https://example.com/high-res-image.jpg")!
        imageView.sd_setImage(with: imageURL)
    }
}
