//
//  DetailViewController.swift
//  HomeWork3month7,8
//
//  Created by bond on 7/6/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    private let tapButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .tintColor
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return button
    }()
    
    @objc func tap(){
        let vc = NextViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(tapButton)
        
        tapButton.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.width.equalTo(250)
        }
    }
    

}
