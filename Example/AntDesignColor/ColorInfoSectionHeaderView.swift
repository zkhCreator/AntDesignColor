//
//  ColorInfoSectionHeaderView.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2020/9/6.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class ColorInfoSectionHeaderView: UITableViewHeaderFooterView {
    let title:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0)
        return label
    }()
    
    let desc:UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 14.0)
        label.textColor = UIColor.Ant.Gray.v7
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        addSubview(title)
        addSubview(desc)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(title: String, desc:String) {
        self.title.text = title
        self.desc.text = desc
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.title.sizeToFit()
        self.desc.sizeToFit()
        
        self.title.center.y = self.bounds.midY
        self.title.frame.origin.x = 16.0
        
        self.desc.frame.origin.x = 16.0 + self.title.frame.maxX
        self.desc.frame.origin.y = self.title.frame.maxY - self.desc.frame.size.height
    }

}
