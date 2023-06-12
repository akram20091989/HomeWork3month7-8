//
//  TabbleViewController.swift
//  HomeWork3month7,8
//
//  Created by bond on 9/6/23.
//

import UIKit

class TabbleViewCell: UITableViewCell {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 13)
        label.numberOfLines = 2
        return label
    }()
    
    private var addressLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(nameLabel)
        addSubview(addressLabel)
        
        nameLabel.snp.makeConstraints{make in
            make.leading.equalToSuperview().offset(0)
            make.top.equalToSuperview().offset(15)
        }
        
        addressLabel.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(0)
            make.top.equalTo(nameLabel.snp.bottom).offset(20)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(name: String, address: String){
        nameLabel.text = name
        addressLabel.text = address
    }
    
    
    
}
