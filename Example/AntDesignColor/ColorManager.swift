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
        ]),
        
        ColorGroup(title: "Calendula Gold / 金盏花", desc: "活力、积极", colors: [
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
