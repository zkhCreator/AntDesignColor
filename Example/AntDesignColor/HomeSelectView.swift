//
//  HomeSelectView.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2021/10/9.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI

struct HomeSelectView: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: ColorListView(data: ColorManager.normalData)) {
                    Text("正常模式 / Normal Color")
                }
                NavigationLink(destination: ColorListView(data: ColorManager.darkModeData)) {
                    Text("暗黑模式 / DarkMode Color")
                }
                NavigationLink(destination: ColorListView(data: ColorManager.ldData)) {
                    Text("自动转换模式 / Auto Transfrom Color")
                }
//            }.navigationTitle(Text("AntDesign Color", displayMode: Inline))
            }.navigationBarTitle("AntDesign Color", displayMode: .inline)
        }
    }
}

struct HomeSelectView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeSelectView()
            HomeSelectView().preferredColorScheme(.dark)
        }
    }
}
