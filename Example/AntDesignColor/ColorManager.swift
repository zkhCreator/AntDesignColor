//
//  ColorManager.swift
//  AntDesignColor_Example
//
//  Created by zkhCreator on 2020/9/6.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import AntDesignColor

struct ColorItem {
    let color:UIColor
    let colorValue:String
    let colorName:String
    
    let fontColor:UIColor
    
    init(color:UIColor, colorValue:String, colorName:String, fontColor:UIColor = UIColor.black) {
        self.color = color
        self.colorName = colorName
        self.colorValue = colorValue
        self.fontColor = fontColor
    }
}

struct ColorGroup {
    let title:String
    let desc:String
    
    let colors:[ColorItem]
    
    init(title: String, desc: String, colors:[ColorItem]) {
        self.title = title
        self.desc = desc
        self.colors = colors
    }
}


struct ColorManager {
    static let data = [
        ColorGroup(title: "Dust Red / 薄暮", desc: "斗志、奔放", colors: [
            ColorItem(color: UIColor.Ant.DustRed.v1, colorValue: "#fff1f0", colorName: "DustRed.v1"),
            ColorItem(color: UIColor.Ant.DustRed.v2, colorValue: "#ffccc7", colorName: "DustRed.v2"),
            ColorItem(color: UIColor.Ant.DustRed.v3, colorValue: "#ffa39e", colorName: "DustRed.v3"),
            ColorItem(color: UIColor.Ant.DustRed.v4, colorValue: "#ff7875", colorName: "DustRed.v4"),
            ColorItem(color: UIColor.Ant.DustRed.v5, colorValue: "#ff4d4f", colorName: "DustRed.v5"),
            ColorItem(color: UIColor.Ant.DustRed.v6, colorValue: "#f5222d", colorName: "DustRed.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.v7, colorValue: "#cf1322", colorName: "DustRed.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.v8, colorValue: "#a8071a", colorName: "DustRed.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.v9, colorValue: "#820014", colorName: "DustRed.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.v10, colorValue: "#5c0011", colorName: "DustRed.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.DustRed.DMv1, colorValue: "#2a1215", colorName: "DustRed.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.DMv2, colorValue: "#431418", colorName: "DustRed.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.DMv3, colorValue: "#58181c", colorName: "DustRed.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.DMv4, colorValue: "#791a1f", colorName: "DustRed.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.DMv5, colorValue: "#a61d24", colorName: "DustRed.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DustRed.DMv6, colorValue: "#d32029", colorName: "DustRed.DMv6"),
            ColorItem(color: UIColor.Ant.DustRed.DMv7, colorValue: "#e84749", colorName: "DustRed.DMv7"),
            ColorItem(color: UIColor.Ant.DustRed.DMv8, colorValue: "#f89f9a", colorName: "DustRed.DMv8"),
            ColorItem(color: UIColor.Ant.DustRed.DMv9, colorValue: "#f89f9a", colorName: "DustRed.DMv9"),
            ColorItem(color: UIColor.Ant.DustRed.DMv10, colorValue: "#fac8c3", colorName: "DustRed.DMv10"),
        ]),
        
        ColorGroup(title: "Volcano / 火山", desc: "醒目、澎湃", colors: [
            ColorItem(color: UIColor.Ant.Volcano.v1, colorValue: "#fff2e8", colorName: "Volcano.v1"),
            ColorItem(color: UIColor.Ant.Volcano.v2, colorValue: "#ffd8bf", colorName: "Volcano.v2"),
            ColorItem(color: UIColor.Ant.Volcano.v3, colorValue: "#ffbb96", colorName: "Volcano.v3"),
            ColorItem(color: UIColor.Ant.Volcano.v4, colorValue: "#ff9c6e", colorName: "Volcano.v4"),
            ColorItem(color: UIColor.Ant.Volcano.v5, colorValue: "#ff7a45", colorName: "Volcano.v5"),
            ColorItem(color: UIColor.Ant.Volcano.v6, colorValue: "#fa541c", colorName: "Volcano.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.v7, colorValue: "#d4380d", colorName: "Volcano.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.v8, colorValue: "#ad2102", colorName: "Volcano.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.v9, colorValue: "#871400", colorName: "Volcano.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.v10, colorValue: "#610b00", colorName: "Volcano.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.Volcano.DMv1, colorValue: "#2b1611", colorName: "Volcano.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.DMv2, colorValue: "#441d12", colorName: "Volcano.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.DMv3, colorValue: "#592716", colorName: "Volcano.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.DMv4, colorValue: "#7c3118", colorName: "Volcano.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.DMv5, colorValue: "#aa3e19", colorName: "Volcano.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Volcano.DMv6, colorValue: "#d84a1b", colorName: "Volcano.DMv6"),
            ColorItem(color: UIColor.Ant.Volcano.DMv7, colorValue: "#e87040", colorName: "Volcano.DMv7"),
            ColorItem(color: UIColor.Ant.Volcano.DMv8, colorValue: "#f3956a", colorName: "Volcano.DMv8"),
            ColorItem(color: UIColor.Ant.Volcano.DMv9, colorValue: "#f8b692", colorName: "Volcano.DMv9"),
            ColorItem(color: UIColor.Ant.Volcano.DMv10, colorValue: "#fad4bc", colorName: "Volcano.DMv10"),
        ]),
        
        ColorGroup(title: "Sunset Orange / 日暮", desc: "温暖、欢快", colors: [
            ColorItem(color: UIColor.Ant.SunsetOrange.v1, colorValue: "#fff7e6", colorName: "SunsetOrange.v1"),
            ColorItem(color: UIColor.Ant.SunsetOrange.v2, colorValue: "#ffe7ba", colorName: "SunsetOrange.v2"),
            ColorItem(color: UIColor.Ant.SunsetOrange.v3, colorValue: "#ffd591", colorName: "SunsetOrange.v3"),
            ColorItem(color: UIColor.Ant.SunsetOrange.v4, colorValue: "#ffc069", colorName: "SunsetOrange.v4"),
            ColorItem(color: UIColor.Ant.SunsetOrange.v5, colorValue: "#ffa940", colorName: "SunsetOrange.v5"),
            ColorItem(color: UIColor.Ant.SunsetOrange.v6, colorValue: "#fa8c16", colorName: "SunsetOrange.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.v7, colorValue: "#d46b08", colorName: "SunsetOrange.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.v8, colorValue: "#ad4e00", colorName: "SunsetOrange.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.v9, colorValue: "#873800", colorName: "SunsetOrange.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.v10, colorValue: "#612500", colorName: "SunsetOrange.v10", fontColor: UIColor.white),
            
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv1, colorValue: "#2b1d11", colorName: "SunsetOrange.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv2, colorValue: "#442a11", colorName: "SunsetOrange.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv3, colorValue: "#593815", colorName: "SunsetOrange.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv4, colorValue: "#7c4a15", colorName: "SunsetOrange.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv5, colorValue: "#aa6215", colorName: "SunsetOrange.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv6, colorValue: "#d87a16", colorName: "SunsetOrange.DMv6"),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv7, colorValue: "#e89a3c", colorName: "SunsetOrange.DMv7"),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv8, colorValue: "#f3b765", colorName: "SunsetOrange.DMv8"),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv9, colorValue: "#f8cf8d", colorName: "SunsetOrange.DMv9"),
            ColorItem(color: UIColor.Ant.SunsetOrange.DMv10, colorValue: "#fae3b7", colorName: "SunsetOrange.DMv10"),

        ]),
        
        ColorGroup(title: "Calendula Gold / 金盏花", desc: "活力、积极", colors: [
            ColorItem(color: UIColor.Ant.CalendulaGold.v1, colorValue: "#fffbe6", colorName: "CalendulaGold.v1"),
            ColorItem(color: UIColor.Ant.CalendulaGold.v2, colorValue: "#ffe7ba", colorName: "CalendulaGold.v2"),
            ColorItem(color: UIColor.Ant.CalendulaGold.v3, colorValue: "#ffd591", colorName: "CalendulaGold.v3"),
            ColorItem(color: UIColor.Ant.CalendulaGold.v4, colorValue: "#ffc069", colorName: "CalendulaGold.v4"),
            ColorItem(color: UIColor.Ant.CalendulaGold.v5, colorValue: "#ffa940", colorName: "CalendulaGold.v5"),
            ColorItem(color: UIColor.Ant.CalendulaGold.v6, colorValue: "#fa8c16", colorName: "CalendulaGold.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.v7, colorValue: "#d46b08", colorName: "CalendulaGold.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.v8, colorValue: "#ad4e00", colorName: "CalendulaGold.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.v9, colorValue: "#873800", colorName: "CalendulaGold.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.v10, colorValue: "#612500", colorName: "CalendulaGold.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv1, colorValue: "#2b2111", colorName: "CalendulaGold.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv2, colorValue: "#443111", colorName: "CalendulaGold.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv3, colorValue: "#594214", colorName: "CalendulaGold.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv4, colorValue: "#7c5914", colorName: "CalendulaGold.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv5, colorValue: "#aa7714", colorName: "CalendulaGold.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv6, colorValue: "#d89614", colorName: "CalendulaGold.DMv6"),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv7, colorValue: "#e8b339", colorName: "CalendulaGold.DMv7"),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv8, colorValue: "#f3cc62", colorName: "CalendulaGold.DMv8"),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv9, colorValue: "#f8df8b", colorName: "CalendulaGold.DMv9"),
            ColorItem(color: UIColor.Ant.CalendulaGold.DMv10, colorValue: "#faedb5", colorName: "CalendulaGold.DMv10"),

        ]),
        
        
        ColorGroup(title: "Sunrise Yellow / 日出", desc: "出生、阳光", colors: [
            ColorItem(color: UIColor.Ant.SunriseYellow.v1, colorValue: "#feffe6", colorName: "SunriseYellow.v1"),
            ColorItem(color: UIColor.Ant.SunriseYellow.v2, colorValue: "#ffffb8", colorName: "SunriseYellow.v2"),
            ColorItem(color: UIColor.Ant.SunriseYellow.v3, colorValue: "#fffb8f", colorName: "SunriseYellow.v3"),
            ColorItem(color: UIColor.Ant.SunriseYellow.v4, colorValue: "#fff566", colorName: "SunriseYellow.v4"),
            ColorItem(color: UIColor.Ant.SunriseYellow.v5, colorValue: "#ffec3d", colorName: "SunriseYellow.v5"),
            ColorItem(color: UIColor.Ant.SunriseYellow.v6, colorValue: "#fadb14", colorName: "SunriseYellow.v6"),
            ColorItem(color: UIColor.Ant.SunriseYellow.v7, colorValue: "#d4b106", colorName: "SunriseYellow.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.v8, colorValue: "#ad8b00", colorName: "SunriseYellow.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.v9, colorValue: "#876800", colorName: "SunriseYellow.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.v10, colorValue: "#614700", colorName: "SunriseYellow.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv1, colorValue: "#2b2611", colorName: "SunriseYellow.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv2, colorValue: "#443b11", colorName: "SunriseYellow.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv3, colorValue: "#595014", colorName: "SunriseYellow.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv4, colorValue: "#7c6e14", colorName: "SunriseYellow.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv5, colorValue: "#aa9514", colorName: "SunriseYellow.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv6, colorValue: "#d8bd14", colorName: "SunriseYellow.DMv6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv7, colorValue: "#e8d639", colorName: "SunriseYellow.DMv7"),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv8, colorValue: "#f3ea62", colorName: "SunriseYellow.DMv8"),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv9, colorValue: "#f8f48b", colorName: "SunriseYellow.DMv9"),
            ColorItem(color: UIColor.Ant.SunriseYellow.DMv10, colorValue: "#fafab5", colorName: "SunriseYellow.DMv10"),

        ]),
        
        
        ColorGroup(title: "Lime / 青柠", desc: "自然、生机", colors: [
            ColorItem(color: UIColor.Ant.Lime.v1, colorValue: "#fcffe6", colorName: "Lime.v1"),
            ColorItem(color: UIColor.Ant.Lime.v2, colorValue: "#f4ffb8", colorName: "Lime.v2"),
            ColorItem(color: UIColor.Ant.Lime.v3, colorValue: "#eaff8f", colorName: "Lime.v3"),
            ColorItem(color: UIColor.Ant.Lime.v4, colorValue: "#d3f261", colorName: "Lime.v4"),
            ColorItem(color: UIColor.Ant.Lime.v5, colorValue: "#bae637", colorName: "Lime.v5"),
            ColorItem(color: UIColor.Ant.Lime.v6, colorValue: "#a0d911", colorName: "Lime.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.v7, colorValue: "#7cb305", colorName: "Lime.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.v8, colorValue: "#5b8c00", colorName: "Lime.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.v9, colorValue: "#3f6600", colorName: "Lime.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.v10, colorValue: "#254000", colorName: "Lime.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.Lime.DMv1, colorValue: "#1f2611", colorName: "Lime.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.DMv2, colorValue: "#2e3c10", colorName: "Lime.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.DMv3, colorValue: "#3e4f13", colorName: "Lime.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.DMv4, colorValue: "#536d13", colorName: "Lime.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.DMv5, colorValue: "#6f9412", colorName: "Lime.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Lime.DMv6, colorValue: "#8bbb11", colorName: "Lime.DMv6"),
            ColorItem(color: UIColor.Ant.Lime.DMv7, colorValue: "#a9d134", colorName: "Lime.DMv7"),
            ColorItem(color: UIColor.Ant.Lime.DMv8, colorValue: "#c9e75d", colorName: "Lime.DMv8"),
            ColorItem(color: UIColor.Ant.Lime.DMv9, colorValue: "#e4f88b", colorName: "Lime.DMv9"),
            ColorItem(color: UIColor.Ant.Lime.DMv10, colorValue: "#f0fab5", colorName: "Lime.DMv10"),

        ]),
        
        ColorGroup(title: "Polar Green / 极光绿", desc: "健康、创新", colors: [
            ColorItem(color: UIColor.Ant.PolarGreen.v1, colorValue: "#f6ffed", colorName: "PolarGreen.v1"),
            ColorItem(color: UIColor.Ant.PolarGreen.v2, colorValue: "#d9f7be", colorName: "PolarGreen.v2"),
            ColorItem(color: UIColor.Ant.PolarGreen.v3, colorValue: "#b7eb8f", colorName: "PolarGreen.v3"),
            ColorItem(color: UIColor.Ant.PolarGreen.v4, colorValue: "#95de64", colorName: "PolarGreen.v4"),
            ColorItem(color: UIColor.Ant.PolarGreen.v5, colorValue: "#73d13d", colorName: "PolarGreen.v5"),
            ColorItem(color: UIColor.Ant.PolarGreen.v6, colorValue: "#52c41a", colorName: "PolarGreen.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.v7, colorValue: "#389e0d", colorName: "PolarGreen.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.v8, colorValue: "#237804", colorName: "PolarGreen.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.v9, colorValue: "#135200", colorName: "PolarGreen.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.v10, colorValue: "#092b00", colorName: "PolarGreen.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.PolarGreen.DMv1, colorValue: "#162312", colorName: "PolarGreen.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv2, colorValue: "#1d3712", colorName: "PolarGreen.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv3, colorValue: "#274916", colorName: "PolarGreen.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv4, colorValue: "#306317", colorName: "PolarGreen.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv5, colorValue: "#3c8618", colorName: "PolarGreen.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv6, colorValue: "#49aa19", colorName: "PolarGreen.DMv6"),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv7, colorValue: "#6abe39", colorName: "PolarGreen.DMv7"),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv8, colorValue: "#8fd460", colorName: "PolarGreen.DMv8"),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv9, colorValue: "#b2e58b", colorName: "PolarGreen.DMv9"),
            ColorItem(color: UIColor.Ant.PolarGreen.DMv10, colorValue: "#d5f2bb", colorName: "PolarGreen.DMv10"),

        ]),
        
        
        ColorGroup(title: "Cyan / 明青", desc: "健康、创新", colors: [
            ColorItem(color: UIColor.Ant.Cyan.v1, colorValue: "#e6fffb", colorName: "Cyan.v1"),
            ColorItem(color: UIColor.Ant.Cyan.v2, colorValue: "#b5f5ec", colorName: "Cyan.v2"),
            ColorItem(color: UIColor.Ant.Cyan.v3, colorValue: "#87e8de", colorName: "Cyan.v3"),
            ColorItem(color: UIColor.Ant.Cyan.v4, colorValue: "#5cdbd3", colorName: "Cyan.v4"),
            ColorItem(color: UIColor.Ant.Cyan.v5, colorValue: "#36cfc9", colorName: "Cyan.v5"),
            ColorItem(color: UIColor.Ant.Cyan.v6, colorValue: "#13c2c2", colorName: "Cyan.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.v7, colorValue: "#08979c", colorName: "Cyan.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.v8, colorValue: "#006d75", colorName: "Cyan.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.v9, colorValue: "#00474f", colorName: "Cyan.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.v10, colorValue: "#002329", colorName: "Cyan.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.Cyan.DMv1, colorValue: "#112123", colorName: "Cyan.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.DMv2, colorValue: "#113536", colorName: "Cyan.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.DMv3, colorValue: "#144848", colorName: "Cyan.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.DMv4, colorValue: "#146262", colorName: "Cyan.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.DMv5, colorValue: "#138585", colorName: "Cyan.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Cyan.DMv6, colorValue: "#13a8a8", colorName: "Cyan.DMv6"),
            ColorItem(color: UIColor.Ant.Cyan.DMv7, colorValue: "#33bcb7", colorName: "Cyan.DMv7"),
            ColorItem(color: UIColor.Ant.Cyan.DMv8, colorValue: "#58d1c9", colorName: "Cyan.DMv8"),
            ColorItem(color: UIColor.Ant.Cyan.DMv9, colorValue: "#84e2d8", colorName: "Cyan.DMv9"),
            ColorItem(color: UIColor.Ant.Cyan.DMv10, colorValue: "#b2f1e8", colorName: "Cyan.DMv10"),

        ]),
        
        
        ColorGroup(title: "Daybreak Blue / 拂晓蓝", desc: "包容、科技、普惠", colors: [
            ColorItem(color: UIColor.Ant.DaybreakBlue.v1, colorValue: "#e6f7ff", colorName: "DaybreakBlue.v1"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v2, colorValue: "#bae7ff", colorName: "DaybreakBlue.v2"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v3, colorValue: "#91d5ff", colorName: "DaybreakBlue.v3"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v4, colorValue: "#69c0ff", colorName: "DaybreakBlue.v4"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v5, colorValue: "#40a9ff", colorName: "DaybreakBlue.v5"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v6, colorValue: "#1890ff", colorName: "DaybreakBlue.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v7, colorValue: "#096dd9", colorName: "DaybreakBlue.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v8, colorValue: "#0050b3", colorName: "DaybreakBlue.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v9, colorValue: "#003a8c", colorName: "DaybreakBlue.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.v10, colorValue: "#002766", colorName: "DaybreakBlue.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv1, colorValue: "#111d2c", colorName: "DaybreakBlue.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv2, colorValue: "#112a45", colorName: "DaybreakBlue.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv3, colorValue: "#15395b", colorName: "DaybreakBlue.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv4, colorValue: "#164c7e", colorName: "DaybreakBlue.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv5, colorValue: "#1765ad", colorName: "DaybreakBlue.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv6, colorValue: "#177ddc", colorName: "DaybreakBlue.DMv6"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv7, colorValue: "#3c9ae8", colorName: "DaybreakBlue.DMv7"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv8, colorValue: "#65b7f3", colorName: "DaybreakBlue.DMv8"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv9, colorValue: "#8dcff8", colorName: "DaybreakBlue.DMv9"),
            ColorItem(color: UIColor.Ant.DaybreakBlue.DMv10, colorValue: "#b7e3fa", colorName: "DaybreakBlue.DMv10"),

        ]),
        
        
        ColorGroup(title: "Geek Blue / 极客蓝", desc: "探索、钻研", colors: [
            ColorItem(color: UIColor.Ant.GeekBlue.v1, colorValue: "#f0f5ff", colorName: "GeekBlue.v1"),
            ColorItem(color: UIColor.Ant.GeekBlue.v2, colorValue: "#d6e4ff", colorName: "GeekBlue.v2"),
            ColorItem(color: UIColor.Ant.GeekBlue.v3, colorValue: "#adc6ff", colorName: "GeekBlue.v3"),
            ColorItem(color: UIColor.Ant.GeekBlue.v4, colorValue: "#85a5ff", colorName: "GeekBlue.v4"),
            ColorItem(color: UIColor.Ant.GeekBlue.v5, colorValue: "#597ef7", colorName: "GeekBlue.v5"),
            ColorItem(color: UIColor.Ant.GeekBlue.v6, colorValue: "#2f54eb", colorName: "GeekBlue.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.v7, colorValue: "#1d39c4", colorName: "GeekBlue.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.v8, colorValue: "#10239e", colorName: "GeekBlue.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.v9, colorValue: "#061178", colorName: "GeekBlue.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.v10, colorValue: "#030852", colorName: "GeekBlue.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.GeekBlue.DMv1, colorValue: "#131629", colorName: "GeekBlue.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv2, colorValue: "#161d40", colorName: "GeekBlue.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv3, colorValue: "#1c2755", colorName: "GeekBlue.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv4, colorValue: "#203175", colorName: "GeekBlue.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv5, colorValue: "#263ea0", colorName: "GeekBlue.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv6, colorValue: "#2b4acb", colorName: "GeekBlue.DMv6"),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv7, colorValue: "#5273e0", colorName: "GeekBlue.DMv7"),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv8, colorValue: "#7f9ef3", colorName: "GeekBlue.DMv8"),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv9, colorValue: "#a8c1f8", colorName: "GeekBlue.DMv9"),
            ColorItem(color: UIColor.Ant.GeekBlue.DMv10, colorValue: "#d2e0fa", colorName: "GeekBlue.DMv10"),

        ]),
        
        
        ColorGroup(title: "Golden Purple / 酱紫", desc: "优雅、浪漫", colors: [
            ColorItem(color: UIColor.Ant.GoldenPurple.v1, colorValue: "#f9f0ff", colorName: "GoldenPurple.v1"),
            ColorItem(color: UIColor.Ant.GoldenPurple.v2, colorValue: "#efdbff", colorName: "GoldenPurple.v2"),
            ColorItem(color: UIColor.Ant.GoldenPurple.v3, colorValue: "#d3adf7", colorName: "GoldenPurple.v3"),
            ColorItem(color: UIColor.Ant.GoldenPurple.v4, colorValue: "#b37feb", colorName: "GoldenPurple.v4"),
            ColorItem(color: UIColor.Ant.GoldenPurple.v5, colorValue: "#9254de", colorName: "GoldenPurple.v5"),
            ColorItem(color: UIColor.Ant.GoldenPurple.v6, colorValue: "#722ed1", colorName: "GoldenPurple.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.v7, colorValue: "#531dab", colorName: "GoldenPurple.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.v8, colorValue: "#391085", colorName: "GoldenPurple.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.v9, colorValue: "#22075e", colorName: "GoldenPurple.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.v10, colorValue: "#120338", colorName: "GoldenPurple.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv1, colorValue: "#1a1325", colorName: "GoldenPurple.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv2, colorValue: "#24163a", colorName: "GoldenPurple.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv3, colorValue: "#301c4d", colorName: "GoldenPurple.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv4, colorValue: "#3e2069", colorName: "GoldenPurple.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv5, colorValue: "#51258f", colorName: "GoldenPurple.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv6, colorValue: "#642ab5", colorName: "GoldenPurple.DMv6"),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv7, colorValue: "#854eca", colorName: "GoldenPurple.DMv7"),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv8, colorValue: "#ab7ae0", colorName: "GoldenPurple.DMv8"),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv9, colorValue: "#cda8f0", colorName: "GoldenPurple.DMv9"),
            ColorItem(color: UIColor.Ant.GoldenPurple.DMv10, colorValue: "#ebd7fa", colorName: "GoldenPurple.DMv10"),

        ]),
        
        
        ColorGroup(title: "Magenta / 法式洋红", desc: "明快、感性", colors: [
            ColorItem(color: UIColor.Ant.Magenta.v1, colorValue: "#fff0f6", colorName: "Magenta.v1"),
            ColorItem(color: UIColor.Ant.Magenta.v2, colorValue: "#ffd6e7", colorName: "Magenta.v2"),
            ColorItem(color: UIColor.Ant.Magenta.v3, colorValue: "#ffadd2", colorName: "Magenta.v3"),
            ColorItem(color: UIColor.Ant.Magenta.v4, colorValue: "#ff85c0", colorName: "Magenta.v4"),
            ColorItem(color: UIColor.Ant.Magenta.v5, colorValue: "#f759ab", colorName: "Magenta.v5"),
            ColorItem(color: UIColor.Ant.Magenta.v6, colorValue: "#eb2f96", colorName: "Magenta.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.v7, colorValue: "#c41d7f", colorName: "Magenta.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.v8, colorValue: "#9e1068", colorName: "Magenta.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.v9, colorValue: "#780650", colorName: "Magenta.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.v10, colorValue: "#520339", colorName: "Magenta.v10", fontColor: UIColor.white),
            /// DARK MODE
            ColorItem(color: UIColor.Ant.Magenta.DMv1, colorValue: "#291321", colorName: "Magenta.DMv1", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.DMv2, colorValue: "#40162f", colorName: "Magenta.DMv2", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.DMv3, colorValue: "#551c3b", colorName: "Magenta.DMv3", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.DMv4, colorValue: "#75204f", colorName: "Magenta.DMv4", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.DMv5, colorValue: "#a02669", colorName: "Magenta.DMv5", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Magenta.DMv6, colorValue: "#cb2b83", colorName: "Magenta.DMv6"),
            ColorItem(color: UIColor.Ant.Magenta.DMv7, colorValue: "#e0529c", colorName: "Magenta.DMv7"),
            ColorItem(color: UIColor.Ant.Magenta.DMv8, colorValue: "#f37fb7", colorName: "Magenta.DMv8"),
            ColorItem(color: UIColor.Ant.Magenta.DMv9, colorValue: "#f8a8cc", colorName: "Magenta.DMv9"),
            ColorItem(color: UIColor.Ant.Magenta.DMv10, colorValue: "#fad2e3", colorName: "Magenta.DMv10"),

        ]),
        
        
        ColorGroup(title: "Gray / 中性色板", desc: "", colors: [
            ColorItem(color: UIColor.Ant.Gray.v1, colorValue: "#ffffff", colorName: "Gray.v1"),
            ColorItem(color: UIColor.Ant.Gray.v2, colorValue: "#fafafa", colorName: "Gray.v2"),
            ColorItem(color: UIColor.Ant.Gray.v3, colorValue: "#f5f5f5", colorName: "Gray.v3"),
            ColorItem(color: UIColor.Ant.Gray.v4, colorValue: "#f0f0f0", colorName: "Gray.v4"),
            ColorItem(color: UIColor.Ant.Gray.v5, colorValue: "#d9d9d9", colorName: "Gray.v5"),
            ColorItem(color: UIColor.Ant.Gray.v6, colorValue: "#bfbfbf", colorName: "Gray.v6", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v7, colorValue: "#8c8c8c", colorName: "Gray.v7", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v8, colorValue: "#595959", colorName: "Gray.v8", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v9, colorValue: "#434343", colorName: "Gray.v9", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v10, colorValue: "#262626", colorName: "Gray.v10", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v11, colorValue: "#1f1f1f", colorName: "Gray.v11", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v12, colorValue: "#141414", colorName: "Gray.v12", fontColor: UIColor.white),
            ColorItem(color: UIColor.Ant.Gray.v13, colorValue: "#000000", colorName: "Gray.v13", fontColor: UIColor.white),
        ]),
    ]

}
