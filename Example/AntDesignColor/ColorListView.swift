//
//  ColorListView.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2021/10/9.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI

struct ColorListView: View {
    let data: [ColorGroup]
    @State private var showAlert = false;

    var body: some View {
        List {
            ForEach(data, id: \.self) { group in
                let header = ColorItemHeaderView(title: group.title, desc: group.desc)
                    .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .background(Color.white)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))


                Section(header: header.accessibilityHidden(true)) {
                    ForEach(group.colors, id: \.self) { color in
                        ColorListItemView(color: color).padding(EdgeInsets())
                            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .onTapGesture {
                                if (color.colorValue.count != 0) {
                                    let pasteboard = UIPasteboard.general
                                    pasteboard.string = color.colorValue
                                }
                                self.showAlert = true
                            }.alert(
                                isPresented: $showAlert,
                                content: { Alert(title: color.colorValue.count == 0 ? Text("不可复制（Can‘t Copy）") : Text("\(color.colorValue) 已复制（Copied）")) }
                            )

                    }

                }
            }
        }.listStyle(PlainListStyle())
    }
}

struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        let data: [ColorGroup] = [
            ColorGroup(title: "Dust Red / 薄暮", desc: "斗志、奔放", colors: [
                ColorItem(color: UIColor.Ant.DustRed.v1, colorValue: "#fff1f0", colorName: "DustRed.v1"),
                ColorItem(color: UIColor.Ant.DustRed.v2, colorValue: "#ffccc7", colorName: "DustRed.v2"),
                ColorItem(color: UIColor.Ant.DustRed.v3, colorValue: "#ffa39e", colorName: "DustRed.v3"),
            ]),
            
            ColorGroup(title: "Volcano / 火山", desc: "醒目、澎湃", colors: [
                ColorItem(color: UIColor.Ant.Volcano.DMv1, colorValue: "#fff2e8", colorName: "Volcano.v1"),
                ColorItem(color: UIColor.Ant.Volcano.DMv2, colorValue: "#ffd8bf", colorName: "Volcano.v2"),
                ColorItem(color: UIColor.Ant.Volcano.DMv3, colorValue: "#ffbb96", colorName: "Volcano.v3"),
            ]),
        ]
        ColorListView(data: data)
        ColorListView(data: data).preferredColorScheme(.dark)

    }
}
