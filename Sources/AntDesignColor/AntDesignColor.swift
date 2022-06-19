//
//  AntDesignColor.swift
//  AntDesignColor
//
//  Created by zkhCreator on 2020/9/5.
//

import UIKit

// Usage 1: UIColor.Ant.DustRed.v1 -> UIColor?
// Usage 2: UIColor.Ant.color(.DustRed).v1 -> UIColor?

public protocol AntUIColorProtocol {
}

// MARK: - Hue
public extension UIColor {
    static var defaultDarkUIColor = UIColor("#31465A")
    static var defaultLightUIColor = UIColor.white

    func foregroundUIColor() -> UIColor {
        return self.contrastRatio(UIColor.defaultDarkUIColor) >= 6.0 ? UIColor.defaultDarkUIColor : UIColor.defaultLightUIColor
    }
    
    func hueValue() -> (hue:CGFloat, saturation:CGFloat, brightness:CGFloat, alpha:CGFloat) {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return (hue, saturation, brightness, alpha)
    }
    
    func luminance() -> CGFloat {
        // https://www.w3.org/TR/WCAG20-TECHS/G18.html#G18-tests

        let ciUIColor = CIColor(color: self)

        func adjust(colorComponent: CGFloat) -> CGFloat {
            return (colorComponent < 0.03928) ? (colorComponent / 12.92) : pow((colorComponent + 0.055) / 1.055, 2.4)
        }

        return 0.2126 * adjust(colorComponent: ciUIColor.red) + 0.7152 * adjust(colorComponent: ciUIColor.green) + 0.0722 * adjust(colorComponent: ciUIColor.blue)
    }

    func contrastRatio(_ color: UIColor) -> CGFloat {
        // https://www.w3.org/TR/WCAG20-TECHS/G18.html#G18-tests
        
        let luminance1 = self.luminance()
        let luminance2 = color.luminance()

        let luminanceDarker = min(luminance1, luminance2)
        let luminanceLighter = max(luminance1, luminance2)

        return (luminanceLighter + 0.05) / (luminanceDarker + 0.05)
    }
}

public extension UIColor {
    struct Ant {
    }
    
    static func colors(light: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                switch traitCollection.userInterfaceStyle {
                case .unspecified, .light:
                    return light
                case .dark:
                    return dark
                @unknown default:
                    return light
                }
            }
        } else {
            return light
        }
    }

}

public extension UIColor.Ant {
    // MARK: - Dust Red
    struct DustRed: AntUIColorProtocol {
        public static let v1 = UIColor("#fff1f0")
        public static let v2 = UIColor("#ffccc7")
        public static let v3 = UIColor("#ffa39e")
        public static let v4 = UIColor("#ff7875")
        public static let v5 = UIColor("#ff4d4f")
        public static let v6 = UIColor("#f5222d")
        public static let v7 = UIColor("#cf1322")
        public static let v8 = UIColor("#a8071a")
        public static let v9 = UIColor("#820014")
        public static let v10 = UIColor("#5c0011")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#2a1215")
        public static let DMv2 = UIColor("#431418")
        public static let DMv3 = UIColor("#58181c")
        public static let DMv4 = UIColor("#791a1f")
        public static let DMv5 = UIColor("#a61d24")
        public static let DMv6 = UIColor("#d32029")
        public static let DMv7 = UIColor("#e84749")
        public static let DMv8 = UIColor("#f37370")
        public static let DMv9 = UIColor("#f89f9a")
        public static let DMv10 = UIColor("#fac8c3")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Volcano
    struct Volcano: AntUIColorProtocol {
        public static let v1 = UIColor("#fff2e8")
        public static let v2 = UIColor("#ffd8bf")
        public static let v3 = UIColor("#ffbb96")
        public static let v4 = UIColor("#ff9c6e")
        public static let v5 = UIColor("#ff7a45")
        public static let v6 = UIColor("#fa541c")
        public static let v7 = UIColor("#d4380d")
        public static let v8 = UIColor("#ad2102")
        public static let v9 = UIColor("#871400")
        public static let v10 = UIColor("#610b00")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#2b1611")
        public static let DMv2 = UIColor("#441d12")
        public static let DMv3 = UIColor("#592716")
        public static let DMv4 = UIColor("#7c3118")
        public static let DMv5 = UIColor("#aa3e19")
        public static let DMv6 = UIColor("#d84a1b")
        public static let DMv7 = UIColor("#e87040")
        public static let DMv8 = UIColor("#f3956a")
        public static let DMv9 = UIColor("#f8b692")
        public static let DMv10 = UIColor("#fad4bc")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)

    }
    
    // MARK: - Sunset Orange
    struct SunsetOrange: AntUIColorProtocol {
        public static let v1 = UIColor("#fff7e6")
        public static let v2 = UIColor("#ffe7ba")
        public static let v3 = UIColor("#ffd591")
        public static let v4 = UIColor("#ffc069")
        public static let v5 = UIColor("#ffa940")
        public static let v6 = UIColor("#fa8c16")
        public static let v7 = UIColor("#d46b08")
        public static let v8 = UIColor("#ad4e00")
        public static let v9 = UIColor("#873800")
        public static let v10 = UIColor("#612500")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#2b1d11")
        public static let DMv2 = UIColor("#442a11")
        public static let DMv3 = UIColor("#593815")
        public static let DMv4 = UIColor("#7c4a15")
        public static let DMv5 = UIColor("#aa6215")
        public static let DMv6 = UIColor("#d87a16")
        public static let DMv7 = UIColor("#e89a3c")
        public static let DMv8 = UIColor("#f3b765")
        public static let DMv9 = UIColor("#f8cf8d")
        public static let DMv10 = UIColor("#fae3b7")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)

    }
    
    // MARK: - Calendula Gold
    struct CalendulaGold: AntUIColorProtocol {
        public static let v1 = UIColor("#fffbe6")
        public static let v2 = UIColor("#fff1b8")
        public static let v3 = UIColor("#ffe58f")
        public static let v4 = UIColor("#ffd666")
        public static let v5 = UIColor("#ffc53d")
        public static let v6 = UIColor("#faad14")
        public static let v7 = UIColor("#d48806")
        public static let v8 = UIColor("#ad6800")
        public static let v9 = UIColor("#874d00")
        public static let v10 = UIColor("#613400")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#2b2111")
        public static let DMv2 = UIColor("#443111")
        public static let DMv3 = UIColor("#594214")
        public static let DMv4 = UIColor("#7c5914")
        public static let DMv5 = UIColor("#aa7714")
        public static let DMv6 = UIColor("#d89614")
        public static let DMv7 = UIColor("#e8b339")
        public static let DMv8 = UIColor("#f3cc62")
        public static let DMv9 = UIColor("#f8df8b")
        public static let DMv10 = UIColor("#faedb5")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Sunrise Yellow
    struct SunriseYellow: AntUIColorProtocol {
        public static let v1 = UIColor("#feffe6")
        public static let v2 = UIColor("#ffffb8")
        public static let v3 = UIColor("#fffb8f")
        public static let v4 = UIColor("#fff566")
        public static let v5 = UIColor("#ffec3d")
        public static let v6 = UIColor("#fadb14")
        public static let v7 = UIColor("#d4b106")
        public static let v8 = UIColor("#ad8b00")
        public static let v9 = UIColor("#876800")
        public static let v10 = UIColor("#614700")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#2b2611")
        public static let DMv2 = UIColor("#443b11")
        public static let DMv3 = UIColor("#595014")
        public static let DMv4 = UIColor("#7c6e14")
        public static let DMv5 = UIColor("#aa9514")
        public static let DMv6 = UIColor("#d8bd14")
        public static let DMv7 = UIColor("#e8d639")
        public static let DMv8 = UIColor("#f3ea62")
        public static let DMv9 = UIColor("#f8f48b")
        public static let DMv10 = UIColor("#fafab5")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)

    }
    
    // MARK: - Lime
    struct Lime: AntUIColorProtocol {
        public static let v1 = UIColor("#fcffe6")
        public static let v2 = UIColor("#f4ffb8")
        public static let v3 = UIColor("#eaff8f")
        public static let v4 = UIColor("#d3f261")
        public static let v5 = UIColor("#bae637")
        public static let v6 = UIColor("#a0d911")
        public static let v7 = UIColor("#7cb305")
        public static let v8 = UIColor("#5b8c00")
        public static let v9 = UIColor("#3f6600")
        public static let v10 = UIColor("#254000")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#1f2611")
        public static let DMv2 = UIColor("#2e3c10")
        public static let DMv3 = UIColor("#3e4f13")
        public static let DMv4 = UIColor("#536d13")
        public static let DMv5 = UIColor("#6f9412")
        public static let DMv6 = UIColor("#8bbb11")
        public static let DMv7 = UIColor("#a9d134")
        public static let DMv8 = UIColor("#c9e75d")
        public static let DMv9 = UIColor("#e4f88b")
        public static let DMv10 = UIColor("#f0fab5")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Polar Green
    struct PolarGreen: AntUIColorProtocol {
        public static let v1 = UIColor("#f6ffed")
        public static let v2 = UIColor("#d9f7be")
        public static let v3 = UIColor("#b7eb8f")
        public static let v4 = UIColor("#95de64")
        public static let v5 = UIColor("#73d13d")
        public static let v6 = UIColor("#52c41a")
        public static let v7 = UIColor("#389e0d")
        public static let v8 = UIColor("#237804")
        public static let v9 = UIColor("#135200")
        public static let v10 = UIColor("#092b00")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#162312")
        public static let DMv2 = UIColor("#1d3712")
        public static let DMv3 = UIColor("#274916")
        public static let DMv4 = UIColor("#306317")
        public static let DMv5 = UIColor("#3c8618")
        public static let DMv6 = UIColor("#49aa19")
        public static let DMv7 = UIColor("#6abe39")
        public static let DMv8 = UIColor("#8fd460")
        public static let DMv9 = UIColor("#b2e58b")
        public static let DMv10 = UIColor("#d5f2bb")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Cyan
    struct Cyan: AntUIColorProtocol {
        public static let v1 = UIColor("#e6fffb")
        public static let v2 = UIColor("#b5f5ec")
        public static let v3 = UIColor("#87e8de")
        public static let v4 = UIColor("#5cdbd3")
        public static let v5 = UIColor("#36cfc9")
        public static let v6 = UIColor("#13c2c2")
        public static let v7 = UIColor("#08979c")
        public static let v8 = UIColor("#006d75")
        public static let v9 = UIColor("#00474f")
        public static let v10 = UIColor("#002329")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#112123")
        public static let DMv2 = UIColor("#113536")
        public static let DMv3 = UIColor("#144848")
        public static let DMv4 = UIColor("#146262")
        public static let DMv5 = UIColor("#138585")
        public static let DMv6 = UIColor("#13a8a8")
        public static let DMv7 = UIColor("#33bcb7")
        public static let DMv8 = UIColor("#58d1c9")
        public static let DMv9 = UIColor("#84e2d8")
        public static let DMv10 = UIColor("#b2f1e8")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Daybreak Blue
    struct DaybreakBlue: AntUIColorProtocol {
        public static let v1 = UIColor("#e6f7ff")
        public static let v2 = UIColor("#bae7ff")
        public static let v3 = UIColor("#91d5ff")
        public static let v4 = UIColor("#69c0ff")
        public static let v5 = UIColor("#40a9ff")
        public static let v6 = UIColor("#1890ff")
        public static let v7 = UIColor("#096dd9")
        public static let v8 = UIColor("#0050b3")
        public static let v9 = UIColor("#003a8c")
        public static let v10 = UIColor("#002766")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#111d2c")
        public static let DMv2 = UIColor("#112a45")
        public static let DMv3 = UIColor("#15395b")
        public static let DMv4 = UIColor("#164c7e")
        public static let DMv5 = UIColor("#1765ad")
        public static let DMv6 = UIColor("#177ddc")
        public static let DMv7 = UIColor("#3c9ae8")
        public static let DMv8 = UIColor("#65b7f3")
        public static let DMv9 = UIColor("#8dcff8")
        public static let DMv10 = UIColor("#b7e3fa")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Geek Blue
    struct GeekBlue: AntUIColorProtocol {
        public static let v1 = UIColor("#f0f5ff")
        public static let v2 = UIColor("#d6e4ff")
        public static let v3 = UIColor("#adc6ff")
        public static let v4 = UIColor("#85a5ff")
        public static let v5 = UIColor("#597ef7")
        public static let v6 = UIColor("#2f54eb")
        public static let v7 = UIColor("#1d39c4")
        public static let v8 = UIColor("#10239e")
        public static let v9 = UIColor("#061178")
        public static let v10 = UIColor("#030852")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#131629")
        public static let DMv2 = UIColor("#161d40")
        public static let DMv3 = UIColor("#1c2755")
        public static let DMv4 = UIColor("#203175")
        public static let DMv5 = UIColor("#263ea0")
        public static let DMv6 = UIColor("#2b4acb")
        public static let DMv7 = UIColor("#5273e0")
        public static let DMv8 = UIColor("#7f9ef3")
        public static let DMv9 = UIColor("#a8c1f8")
        public static let DMv10 = UIColor("#d2e0fa")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Golden Purple
    struct GoldenPurple: AntUIColorProtocol {
        public static let v1 = UIColor("#f9f0ff")
        public static let v2 = UIColor("#efdbff")
        public static let v3 = UIColor("#d3adf7")
        public static let v4 = UIColor("#b37feb")
        public static let v5 = UIColor("#9254de")
        public static let v6 = UIColor("#722ed1")
        public static let v7 = UIColor("#531dab")
        public static let v8 = UIColor("#391085")
        public static let v9 = UIColor("#22075e")
        public static let v10 = UIColor("#120338")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#1a1325")
        public static let DMv2 = UIColor("#24163a")
        public static let DMv3 = UIColor("#301c4d")
        public static let DMv4 = UIColor("#3e2069")
        public static let DMv5 = UIColor("#51258f")
        public static let DMv6 = UIColor("#642ab5")
        public static let DMv7 = UIColor("#854eca")
        public static let DMv8 = UIColor("#ab7ae0")
        public static let DMv9 = UIColor("#cda8f0")
        public static let DMv10 = UIColor("#ebd7fa")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Magenta
    struct Magenta: AntUIColorProtocol {
        public static let v1 = UIColor("#fff0f6")
        public static let v2 = UIColor("#ffd6e7")
        public static let v3 = UIColor("#ffadd2")
        public static let v4 = UIColor("#ff85c0")
        public static let v5 = UIColor("#f759ab")
        public static let v6 = UIColor("#eb2f96")
        public static let v7 = UIColor("#c41d7f")
        public static let v8 = UIColor("#9e1068")
        public static let v9 = UIColor("#780650")
        public static let v10 = UIColor("#520339")
        
        /// DARK MODE COLOR
        public static let DMv1 = UIColor("#291321")
        public static let DMv2 = UIColor("#40162f")
        public static let DMv3 = UIColor("#551c3b")
        public static let DMv4 = UIColor("#75204f")
        public static let DMv5 = UIColor("#a02669")
        public static let DMv6 = UIColor("#cb2b83")
        public static let DMv7 = UIColor("#e0529c")
        public static let DMv8 = UIColor("#f37fb7")
        public static let DMv9 = UIColor("#f8a8cc")
        public static let DMv10 = UIColor("#fad2e3")
        
        /// AUTO TRANSFORM Light/Dark COLOR
        public static let LDv1 = UIColor.colors(light: v1, dark: DMv1)
        public static let LDv2 = UIColor.colors(light: v2, dark: DMv2)
        public static let LDv3 = UIColor.colors(light: v3, dark: DMv3)
        public static let LDv4 = UIColor.colors(light: v4, dark: DMv4)
        public static let LDv5 = UIColor.colors(light: v5, dark: DMv5)
        public static let LDv6 = UIColor.colors(light: v6, dark: DMv6)
        public static let LDv7 = UIColor.colors(light: v7, dark: DMv7)
        public static let LDv8 = UIColor.colors(light: v8, dark: DMv8)
        public static let LDv9 = UIColor.colors(light: v9, dark: DMv9)
        public static let LDv10 = UIColor.colors(light: v10, dark: DMv10)
    }
    
    // MARK: - Gray
    struct Gray: AntUIColorProtocol {
        public static let v1 = UIColor("#ffffff")
        public static let v2 = UIColor("#fafafa")
        public static let v3 = UIColor("#f5f5f5")
        public static let v4 = UIColor("#f0f0f0")
        public static let v5 = UIColor("#d9d9d9")
        public static let v6 = UIColor("#bfbfbf")
        public static let v7 = UIColor("#8c8c8c")
        public static let v8 = UIColor("#595959")
        public static let v9 = UIColor("#434343")
        public static let v10 = UIColor("#262626")
        public static let v11 = UIColor("#1f1f1f")
        public static let v12 = UIColor("#141414")
        public static let v13 = UIColor("#000000")
    }
}
