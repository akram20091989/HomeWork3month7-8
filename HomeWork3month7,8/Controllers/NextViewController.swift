//
//  NextViewController.swift
//  HomeWork3month7,8
//
//  Created by bond on 12/6/23.
//

import UIKit


class NextViewController: UIViewController {
    
    private let chekmarkImage: UIImageView = {
        let chekmarkImage = UIImageView()
        chekmarkImage.image = UIImage(systemName: "checkmark")
        return chekmarkImage
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        initSubviews()
    }
    
    private func initSubviews() {
        
        view.addSubview(chekmarkImage)
        
        chekmarkImage.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.height.width.equalTo(200)
        }
        
        
    }
}
