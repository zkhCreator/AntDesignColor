//
//  ColorItemHeaderView.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2021/10/10.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI

struct ColorItemHeaderView: View {
    let title:String
    let desc:String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: nil, content: {
            Text(title).font(.system(size: 17.0)).padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 0))
            Text(desc).font(.system(size: 14.0)).foregroundColor(Color(UIColor.Ant.Gray.v7))
            Spacer()
        }).background(Color(UIColor.colors(light: UIColor.white, dark: UIColor.black)))
    }
}

struct ColorItemHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorItemHeaderView(title: "主标题", desc: "副标题")
        ColorItemHeaderView(title: "主标题", desc: "副标题").preferredColorScheme(.dark)
    }
}
