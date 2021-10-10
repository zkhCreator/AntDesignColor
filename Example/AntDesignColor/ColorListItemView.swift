//
//  ColorListItemView.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2021/10/10.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI

struct ColorListItemView: View {
    let color: ColorItem
    
    var body: some View {
        ZStack(content: {
            Color(color.color).ignoresSafeArea()
            HStack(alignment: .center, spacing: 16.0, content: {
                Text(color.colorName).foregroundColor(Color.init(color.fontColor)).padding(EdgeInsets(top: 0, leading: 16.0, bottom: 0, trailing: 0)).font(.system(size: 14.0))
                Spacer()
                Text(color.colorValue).foregroundColor(Color.init(color.fontColor)).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16.0)).font(.system(size: 14.0))
            })
        })
    }
}

struct ColorListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let color = ColorItem(color: UIColor.Ant.DaybreakBlue.v6, colorValue: "#1890ff", colorName: "DaybreakBlue.v6", fontColor: UIColor.white)
        ColorListItemView(color: color)
    }
}
