//
//  ColorInfoTableViewCell.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2020/9/6.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class ColorInfoTableViewCell: UITableViewCell {

    let colorName:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    
    let colorHexName:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(colorName)
        addSubview(colorHexName)
    }
    
    func update(with model:ColorItem) {
        self.colorName.text = model.colorName
        self.colorName.textColor = model.fontColor
        
        self.colorHexName.text = model.colorValue
        self.colorHexName.textColor = model.fontColor
        
        self.contentView.backgroundColor = model.color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.colorName.sizeToFit()
        self.colorHexName.sizeToFit()
        
        let centerY = self.contentView.bounds.size.height / 2.0
        self.colorName.center.y = centerY
        self.colorHexName.center.y = centerY
        
        self.colorName.frame.origin.x = 16.0
        self.colorHexName.frame.origin.x = self.contentView.bounds.size.width - 16.0 - self.colorHexName.frame.size.width
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
