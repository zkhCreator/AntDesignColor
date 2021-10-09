//
//  AntDesignColor.swift
//  AntDesignColor
//
//  Created by zkhCreator on 2020/9/5.
//

import UIKit
import UIColor_Hex_Swift

// Usage 1: Color.Ant.DustRed.v1 -> Color?
// Usage 2: Color.Ant.color(.DustRed).v1 -> Color?

#if os(macOS)
import Cocoa
public typealias Color = NSColor
#else
import UIKit
public typealias Color = UIColor
#endif


public protocol AntColorProtocol {
    var v1: Color { get }
    var v2: Color { get }
    var v3: Color { get }
    var v4: Color { get }
    var v5: Color { get }
    var v6: Color { get }
    var v7: Color { get }
    var v8: Color { get }
    var v9: Color { get }
    var v10: Color { get }
    var v11: Color? { get }
    var v12: Color? { get }
    var v13: Color? { get }
    var DMv1: Color { get }
    var DMv2: Color { get }
    var DMv3: Color { get }
    var DMv4: Color { get }
    var DMv5: Color { get }
    var DMv6: Color { get }
    var DMv7: Color { get }
    var DMv8: Color { get }
    var DMv9: Color { get }
    var DMv10: Color { get }
    var DMv11: Color? { get }
    var DMv12: Color? { get }
    var DMv13: Color? { get }
}

// MARK: - Hue
public extension Color {
    static var defaultDarkColor = Color("#31465A")
    static var defaultLightColor = Color.white

    func foregroundColor() -> Color {
        return self.contrastRatio(Color.defaultDarkColor) >= 6.0 ? Color.defaultDarkColor : Color.defaultLightColor
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

        let ciColor = CIColor(color: self)

        func adjust(colorComponent: CGFloat) -> CGFloat {
            return (colorComponent < 0.03928) ? (colorComponent / 12.92) : pow((colorComponent + 0.055) / 1.055, 2.4)
        }

        return 0.2126 * adjust(colorComponent: ciColor.red) + 0.7152 * adjust(colorComponent: ciColor.green) + 0.0722 * adjust(colorComponent: ciColor.blue)
    }

    func contrastRatio(_ color: Color) -> CGFloat {
        // https://www.w3.org/TR/WCAG20-TECHS/G18.html#G18-tests
        
        let luminance1 = self.luminance()
        let luminance2 = color.luminance()

        let luminanceDarker = min(luminance1, luminance2)
        let luminanceLighter = max(luminance1, luminance2)

        return (luminanceLighter + 0.05) / (luminanceDarker + 0.05)
    }
}

public extension Color {
    struct Ant {
        enum AntColorItem:String, CaseIterable {
            case GoldenPurple = "GoldenPurple"
            case GeekBlue = "GeekBlue"
            case DaybreakBlue = "DaybreakBlue"
            case Cyan = "Cyan"
            case PolarGreen = "PolarGreen"
            case Lime = "Lime"
            case SunriseYellow = "SunriseYellow"
            case CalendulaGold = "CalendulaGold"
            case SunsetOrange = "SunsetOrange"
            case Volcano = "Volcano"
            case DustRed = "DustRed"
            case Magenta = "Magenta"
            case Gray = "Gray"
        }
        
        static func color(_ type: AntColorItem) -> AntColorProtocol {
            switch type {
                case .DustRed:
                    return DustRed()
                case .Volcano:
                    return Volcano()
                case .SunsetOrange:
                    return SunsetOrange()
                case .CalendulaGold:
                    return CalendulaGold()
                case .SunriseYellow:
                    return SunriseYellow()
                case .Lime:
                    return Lime()
                case .PolarGreen:
                    return PolarGreen()
                case .Cyan:
                    return Cyan()
                case .DaybreakBlue:
                    return DaybreakBlue()
                case .GeekBlue:
                    return GeekBlue()
                case .GoldenPurple:
                    return GoldenPurple()
                case .Magenta:
                    return Magenta()
                case .Gray:
                    return Gray()
            }
        }
    }
}

public extension Color.Ant {
    // MARK: - Dust Red
    struct DustRed: AntColorProtocol {
        public var v1: Color {
            return DustRed.v1
        }
                
        public var v2: Color {
            return DustRed.v2
        }

        public var v3: Color {
            return DustRed.v3
        }

        public var v4: Color {
            return DustRed.v4
        }

        public var v5: Color {
            return DustRed.v5
        }

        public var v6: Color {
            return DustRed.v6
        }

        public var v7: Color {
            return DustRed.v7
        }

        public var v8: Color {
            return DustRed.v8
        }

        public var v9: Color {
            return DustRed.v9
        }

        public var v10: Color {
            return DustRed.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#fff1f0")
        public static let v2 = Color("#ffccc7")
        public static let v3 = Color("#ffa39e")
        public static let v4 = Color("#ff7875")
        public static let v5 = Color("#ff4d4f")
        public static let v6 = Color("#f5222d")
        public static let v7 = Color("#cf1322")
        public static let v8 = Color("#a8071a")
        public static let v9 = Color("#820014")
        public static let v10 = Color("#5c0011")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return DustRed.DMv1
        }
                
        public var DMv2: Color {
            return DustRed.DMv2
        }

        public var DMv3: Color {
            return DustRed.DMv3
        }

        public var DMv4: Color {
            return DustRed.DMv4
        }

        public var DMv5: Color {
            return DustRed.DMv5
        }

        public var DMv6: Color {
            return DustRed.DMv6
        }

        public var DMv7: Color {
            return DustRed.DMv7
        }

        public var DMv8: Color {
            return DustRed.DMv8
        }

        public var DMv9: Color {
            return DustRed.DMv9
        }

        public var DMv10: Color {
            return DustRed.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#2a1215")
        public static let DMv2 = Color("#431418")
        public static let DMv3 = Color("#58181c")
        public static let DMv4 = Color("#791a1f")
        public static let DMv5 = Color("#a61d24")
        public static let DMv6 = Color("#d32029")
        public static let DMv7 = Color("#e84749")
        public static let DMv8 = Color("#f37370")
        public static let DMv9 = Color("#f89f9a")
        public static let DMv10 = Color("#fac8c3")
    }
    
    // MARK: - Volcano
    struct Volcano: AntColorProtocol {
        public var v1: Color {
            return Volcano.v1
        }
                
        public var v2: Color {
            return Volcano.v2
        }

        public var v3: Color {
            return Volcano.v3
        }

        public var v4: Color {
            return Volcano.v4
        }

        public var v5: Color {
            return Volcano.v5
        }

        public var v6: Color {
            return Volcano.v6
        }

        public var v7: Color {
            return Volcano.v7
        }

        public var v8: Color {
            return Volcano.v8
        }

        public var v9: Color {
            return Volcano.v9
        }

        public var v10: Color {
            return Volcano.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }
        
        public static let v1 = Color("#fff2e8")
        public static let v2 = Color("#ffd8bf")
        public static let v3 = Color("#ffbb96")
        public static let v4 = Color("#ff9c6e")
        public static let v5 = Color("#ff7a45")
        public static let v6 = Color("#fa541c")
        public static let v7 = Color("#d4380d")
        public static let v8 = Color("#ad2102")
        public static let v9 = Color("#871400")
        public static let v10 = Color("#610b00")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return Volcano.DMv1
        }
                
        public var DMv2: Color {
            return Volcano.DMv2
        }

        public var DMv3: Color {
            return Volcano.DMv3
        }

        public var DMv4: Color {
            return Volcano.DMv4
        }

        public var DMv5: Color {
            return Volcano.DMv5
        }

        public var DMv6: Color {
            return Volcano.DMv6
        }

        public var DMv7: Color {
            return Volcano.DMv7
        }

        public var DMv8: Color {
            return Volcano.DMv8
        }

        public var DMv9: Color {
            return Volcano.DMv9
        }

        public var DMv10: Color {
            return Volcano.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#2b1611")
        public static let DMv2 = Color("#441d12")
        public static let DMv3 = Color("#592716")
        public static let DMv4 = Color("#7c3118")
        public static let DMv5 = Color("#aa3e19")
        public static let DMv6 = Color("#d84a1b")
        public static let DMv7 = Color("#e87040")
        public static let DMv8 = Color("#f3956a")
        public static let DMv9 = Color("#f8b692")
        public static let DMv10 = Color("#fad4bc")

    }
    
    // MARK: - Sunset Orange
    struct SunsetOrange: AntColorProtocol {
        public var v1: Color {
            return SunsetOrange.v1
        }
                
        public var v2: Color {
            return SunsetOrange.v2
        }

        public var v3: Color {
            return SunsetOrange.v3
        }

        public var v4: Color {
            return SunsetOrange.v4
        }

        public var v5: Color {
            return SunsetOrange.v5
        }

        public var v6: Color {
            return SunsetOrange.v6
        }

        public var v7: Color {
            return SunsetOrange.v7
        }

        public var v8: Color {
            return SunsetOrange.v8
        }

        public var v9: Color {
            return SunsetOrange.v9
        }

        public var v10: Color {
            return SunsetOrange.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#fff7e6")
        public static let v2 = Color("#ffe7ba")
        public static let v3 = Color("#ffd591")
        public static let v4 = Color("#ffc069")
        public static let v5 = Color("#ffa940")
        public static let v6 = Color("#fa8c16")
        public static let v7 = Color("#d46b08")
        public static let v8 = Color("#ad4e00")
        public static let v9 = Color("#873800")
        public static let v10 = Color("#612500")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return SunsetOrange.DMv1
        }
                
        public var DMv2: Color {
            return SunsetOrange.DMv2
        }

        public var DMv3: Color {
            return SunsetOrange.DMv3
        }

        public var DMv4: Color {
            return SunsetOrange.DMv4
        }

        public var DMv5: Color {
            return SunsetOrange.DMv5
        }

        public var DMv6: Color {
            return SunsetOrange.DMv6
        }

        public var DMv7: Color {
            return SunsetOrange.DMv7
        }

        public var DMv8: Color {
            return SunsetOrange.DMv8
        }

        public var DMv9: Color {
            return SunsetOrange.DMv9
        }

        public var DMv10: Color {
            return SunsetOrange.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#2b1d11")
        public static let DMv2 = Color("#442a11")
        public static let DMv3 = Color("#593815")
        public static let DMv4 = Color("#7c4a15")
        public static let DMv5 = Color("#aa6215")
        public static let DMv6 = Color("#d87a16")
        public static let DMv7 = Color("#e89a3c")
        public static let DMv8 = Color("#f3b765")
        public static let DMv9 = Color("#f8cf8d")
        public static let DMv10 = Color("#fae3b7")

    }
    
    // MARK: - Calendula Gold
    struct CalendulaGold: AntColorProtocol {
        public var v1: Color {
            return CalendulaGold.v1
        }
                
        public var v2: Color {
            return CalendulaGold.v2
        }

        public var v3: Color {
            return CalendulaGold.v3
        }

        public var v4: Color {
            return CalendulaGold.v4
        }

        public var v5: Color {
            return CalendulaGold.v5
        }

        public var v6: Color {
            return CalendulaGold.v6
        }

        public var v7: Color {
            return CalendulaGold.v7
        }

        public var v8: Color {
            return CalendulaGold.v8
        }

        public var v9: Color {
            return CalendulaGold.v9
        }

        public var v10: Color {
            return CalendulaGold.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#fffbe6")
        public static let v2 = Color("#fff1b8")
        public static let v3 = Color("#ffe58f")
        public static let v4 = Color("#ffd666")
        public static let v5 = Color("#ffc53d")
        public static let v6 = Color("#faad14")
        public static let v7 = Color("#d48806")
        public static let v8 = Color("#ad6800")
        public static let v9 = Color("#874d00")
        public static let v10 = Color("#613400")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return CalendulaGold.DMv1
        }
                
        public var DMv2: Color {
            return CalendulaGold.DMv2
        }

        public var DMv3: Color {
            return CalendulaGold.DMv3
        }

        public var DMv4: Color {
            return CalendulaGold.DMv4
        }

        public var DMv5: Color {
            return CalendulaGold.DMv5
        }

        public var DMv6: Color {
            return CalendulaGold.DMv6
        }

        public var DMv7: Color {
            return CalendulaGold.DMv7
        }

        public var DMv8: Color {
            return CalendulaGold.DMv8
        }

        public var DMv9: Color {
            return CalendulaGold.DMv9
        }

        public var DMv10: Color {
            return CalendulaGold.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#2b2111")
        public static let DMv2 = Color("#443111")
        public static let DMv3 = Color("#594214")
        public static let DMv4 = Color("#7c5914")
        public static let DMv5 = Color("#aa7714")
        public static let DMv6 = Color("#d89614")
        public static let DMv7 = Color("#e8b339")
        public static let DMv8 = Color("#f3cc62")
        public static let DMv9 = Color("#f8df8b")
        public static let DMv10 = Color("#faedb5")
    }
    
    // MARK: - Sunrise Yellow
    struct SunriseYellow: AntColorProtocol {
        public var v1: Color {
            return SunriseYellow.v1
        }
                
        public var v2: Color {
            return SunriseYellow.v2
        }

        public var v3: Color {
            return SunriseYellow.v3
        }

        public var v4: Color {
            return SunriseYellow.v4
        }

        public var v5: Color {
            return SunriseYellow.v5
        }

        public var v6: Color {
            return SunriseYellow.v6
        }

        public var v7: Color {
            return SunriseYellow.v7
        }

        public var v8: Color {
            return SunriseYellow.v8
        }

        public var v9: Color {
            return SunriseYellow.v9
        }

        public var v10: Color {
            return SunriseYellow.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#feffe6")
        public static let v2 = Color("#ffffb8")
        public static let v3 = Color("#fffb8f")
        public static let v4 = Color("#fff566")
        public static let v5 = Color("#ffec3d")
        public static let v6 = Color("#fadb14")
        public static let v7 = Color("#d4b106")
        public static let v8 = Color("#ad8b00")
        public static let v9 = Color("#876800")
        public static let v10 = Color("#614700")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return SunriseYellow.DMv1
        }
                
        public var DMv2: Color {
            return SunriseYellow.DMv2
        }

        public var DMv3: Color {
            return SunriseYellow.DMv3
        }

        public var DMv4: Color {
            return SunriseYellow.DMv4
        }

        public var DMv5: Color {
            return SunriseYellow.DMv5
        }

        public var DMv6: Color {
            return SunriseYellow.DMv6
        }

        public var DMv7: Color {
            return SunriseYellow.DMv7
        }

        public var DMv8: Color {
            return SunriseYellow.DMv8
        }

        public var DMv9: Color {
            return SunriseYellow.DMv9
        }

        public var DMv10: Color {
            return SunriseYellow.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#2b2611")
        public static let DMv2 = Color("#443b11")
        public static let DMv3 = Color("#595014")
        public static let DMv4 = Color("#7c6e14")
        public static let DMv5 = Color("#aa9514")
        public static let DMv6 = Color("#d8bd14")
        public static let DMv7 = Color("#e8d639")
        public static let DMv8 = Color("#f3ea62")
        public static let DMv9 = Color("#f8f48b")
        public static let DMv10 = Color("#fafab5")

    }
    
    // MARK: - Lime
    struct Lime: AntColorProtocol {
        public var v1: Color {
            return Lime.v1
        }
                
        public var v2: Color {
            return Lime.v2
        }

        public var v3: Color {
            return Lime.v3
        }

        public var v4: Color {
            return Lime.v4
        }

        public var v5: Color {
            return Lime.v5
        }

        public var v6: Color {
            return Lime.v6
        }

        public var v7: Color {
            return Lime.v7
        }

        public var v8: Color {
            return Lime.v8
        }

        public var v9: Color {
            return Lime.v9
        }

        public var v10: Color {
            return Lime.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#fcffe6")
        public static let v2 = Color("#f4ffb8")
        public static let v3 = Color("#eaff8f")
        public static let v4 = Color("#d3f261")
        public static let v5 = Color("#bae637")
        public static let v6 = Color("#a0d911")
        public static let v7 = Color("#7cb305")
        public static let v8 = Color("#5b8c00")
        public static let v9 = Color("#3f6600")
        public static let v10 = Color("#254000")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return Lime.DMv1
        }
                
        public var DMv2: Color {
            return Lime.DMv2
        }

        public var DMv3: Color {
            return Lime.DMv3
        }

        public var DMv4: Color {
            return Lime.DMv4
        }

        public var DMv5: Color {
            return Lime.DMv5
        }

        public var DMv6: Color {
            return Lime.DMv6
        }

        public var DMv7: Color {
            return Lime.DMv7
        }

        public var DMv8: Color {
            return Lime.DMv8
        }

        public var DMv9: Color {
            return Lime.DMv9
        }

        public var DMv10: Color {
            return Lime.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#1f2611")
        public static let DMv2 = Color("#2e3c10")
        public static let DMv3 = Color("#3e4f13")
        public static let DMv4 = Color("#536d13")
        public static let DMv5 = Color("#6f9412")
        public static let DMv6 = Color("#8bbb11")
        public static let DMv7 = Color("#a9d134")
        public static let DMv8 = Color("#c9e75d")
        public static let DMv9 = Color("#e4f88b")
        public static let DMv10 = Color("#f0fab5")
    }
    
    // MARK: - Polar Green
    struct PolarGreen: AntColorProtocol {
        public var v1: Color {
            return PolarGreen.v1
        }
                
        public var v2: Color {
            return PolarGreen.v2
        }

        public var v3: Color {
            return PolarGreen.v3
        }

        public var v4: Color {
            return PolarGreen.v4
        }

        public var v5: Color {
            return PolarGreen.v5
        }

        public var v6: Color {
            return PolarGreen.v6
        }

        public var v7: Color {
            return PolarGreen.v7
        }

        public var v8: Color {
            return PolarGreen.v8
        }

        public var v9: Color {
            return PolarGreen.v9
        }

        public var v10: Color {
            return PolarGreen.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#f6ffed")
        public static let v2 = Color("#d9f7be")
        public static let v3 = Color("#b7eb8f")
        public static let v4 = Color("#95de64")
        public static let v5 = Color("#73d13d")
        public static let v6 = Color("#52c41a")
        public static let v7 = Color("#389e0d")
        public static let v8 = Color("#237804")
        public static let v9 = Color("#135200")
        public static let v10 = Color("#092b00")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return PolarGreen.DMv1
        }
                
        public var DMv2: Color {
            return PolarGreen.DMv2
        }

        public var DMv3: Color {
            return PolarGreen.DMv3
        }

        public var DMv4: Color {
            return PolarGreen.DMv4
        }

        public var DMv5: Color {
            return PolarGreen.DMv5
        }

        public var DMv6: Color {
            return PolarGreen.DMv6
        }

        public var DMv7: Color {
            return PolarGreen.DMv7
        }

        public var DMv8: Color {
            return PolarGreen.DMv8
        }

        public var DMv9: Color {
            return PolarGreen.DMv9
        }

        public var DMv10: Color {
            return PolarGreen.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#162312")
        public static let DMv2 = Color("#1d3712")
        public static let DMv3 = Color("#274916")
        public static let DMv4 = Color("#306317")
        public static let DMv5 = Color("#3c8618")
        public static let DMv6 = Color("#49aa19")
        public static let DMv7 = Color("#6abe39")
        public static let DMv8 = Color("#8fd460")
        public static let DMv9 = Color("#b2e58b")
        public static let DMv10 = Color("#d5f2bb")
    }
    
    // MARK: - Cyan
    struct Cyan: AntColorProtocol {
        public var v1: Color {
            return Cyan.v1
        }
                
        public var v2: Color {
            return Cyan.v2
        }

        public var v3: Color {
            return Cyan.v3
        }

        public var v4: Color {
            return Cyan.v4
        }

        public var v5: Color {
            return Cyan.v5
        }

        public var v6: Color {
            return Cyan.v6
        }

        public var v7: Color {
            return Cyan.v7
        }

        public var v8: Color {
            return Cyan.v8
        }

        public var v9: Color {
            return Cyan.v9
        }

        public var v10: Color {
            return Cyan.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#e6fffb")
        public static let v2 = Color("#b5f5ec")
        public static let v3 = Color("#87e8de")
        public static let v4 = Color("#5cdbd3")
        public static let v5 = Color("#36cfc9")
        public static let v6 = Color("#13c2c2")
        public static let v7 = Color("#08979c")
        public static let v8 = Color("#006d75")
        public static let v9 = Color("#00474f")
        public static let v10 = Color("#002329")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return Cyan.DMv1
        }
                
        public var DMv2: Color {
            return Cyan.DMv2
        }

        public var DMv3: Color {
            return Cyan.DMv3
        }

        public var DMv4: Color {
            return Cyan.DMv4
        }

        public var DMv5: Color {
            return Cyan.DMv5
        }

        public var DMv6: Color {
            return Cyan.DMv6
        }

        public var DMv7: Color {
            return Cyan.DMv7
        }

        public var DMv8: Color {
            return Cyan.DMv8
        }

        public var DMv9: Color {
            return Cyan.DMv9
        }

        public var DMv10: Color {
            return Cyan.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#112123")
        public static let DMv2 = Color("#113536")
        public static let DMv3 = Color("#144848")
        public static let DMv4 = Color("#146262")
        public static let DMv5 = Color("#138585")
        public static let DMv6 = Color("#13a8a8")
        public static let DMv7 = Color("#33bcb7")
        public static let DMv8 = Color("#58d1c9")
        public static let DMv9 = Color("#84e2d8")
        public static let DMv10 = Color("#b2f1e8")
    }
    
    // MARK: - Daybreak Blue
    struct DaybreakBlue: AntColorProtocol {
        public var v1: Color {
            return DaybreakBlue.v1
        }
                
        public var v2: Color {
            return DaybreakBlue.v2
        }

        public var v3: Color {
            return DaybreakBlue.v3
        }

        public var v4: Color {
            return DaybreakBlue.v4
        }

        public var v5: Color {
            return DaybreakBlue.v5
        }

        public var v6: Color {
            return DaybreakBlue.v6
        }

        public var v7: Color {
            return DaybreakBlue.v7
        }

        public var v8: Color {
            return DaybreakBlue.v8
        }

        public var v9: Color {
            return DaybreakBlue.v9
        }

        public var v10: Color {
            return DaybreakBlue.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#e6f7ff")
        public static let v2 = Color("#bae7ff")
        public static let v3 = Color("#91d5ff")
        public static let v4 = Color("#69c0ff")
        public static let v5 = Color("#40a9ff")
        public static let v6 = Color("#1890ff")
        public static let v7 = Color("#096dd9")
        public static let v8 = Color("#0050b3")
        public static let v9 = Color("#003a8c")
        public static let v10 = Color("#002766")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return DaybreakBlue.DMv1
        }
                
        public var DMv2: Color {
            return DaybreakBlue.DMv2
        }

        public var DMv3: Color {
            return DaybreakBlue.DMv3
        }

        public var DMv4: Color {
            return DaybreakBlue.DMv4
        }

        public var DMv5: Color {
            return DaybreakBlue.DMv5
        }

        public var DMv6: Color {
            return DaybreakBlue.DMv6
        }

        public var DMv7: Color {
            return DaybreakBlue.DMv7
        }

        public var DMv8: Color {
            return DaybreakBlue.DMv8
        }

        public var DMv9: Color {
            return DaybreakBlue.DMv9
        }

        public var DMv10: Color {
            return DaybreakBlue.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#111d2c")
        public static let DMv2 = Color("#112a45")
        public static let DMv3 = Color("#15395b")
        public static let DMv4 = Color("#164c7e")
        public static let DMv5 = Color("#1765ad")
        public static let DMv6 = Color("#177ddc")
        public static let DMv7 = Color("#3c9ae8")
        public static let DMv8 = Color("#65b7f3")
        public static let DMv9 = Color("#8dcff8")
        public static let DMv10 = Color("#b7e3fa")
    }
    
    // MARK: - Geek Blue
    struct GeekBlue: AntColorProtocol {
        public var v1: Color {
            return GeekBlue.v1
        }
                
        public var v2: Color {
            return GeekBlue.v2
        }

        public var v3: Color {
            return GeekBlue.v3
        }

        public var v4: Color {
            return GeekBlue.v4
        }

        public var v5: Color {
            return GeekBlue.v5
        }

        public var v6: Color {
            return GeekBlue.v6
        }

        public var v7: Color {
            return GeekBlue.v7
        }

        public var v8: Color {
            return GeekBlue.v8
        }

        public var v9: Color {
            return GeekBlue.v9
        }

        public var v10: Color {
            return GeekBlue.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#f0f5ff")
        public static let v2 = Color("#d6e4ff")
        public static let v3 = Color("#adc6ff")
        public static let v4 = Color("#85a5ff")
        public static let v5 = Color("#597ef7")
        public static let v6 = Color("#2f54eb")
        public static let v7 = Color("#1d39c4")
        public static let v8 = Color("#10239e")
        public static let v9 = Color("#061178")
        public static let v10 = Color("#030852")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return GeekBlue.DMv1
        }
                
        public var DMv2: Color {
            return GeekBlue.DMv2
        }

        public var DMv3: Color {
            return GeekBlue.DMv3
        }

        public var DMv4: Color {
            return GeekBlue.DMv4
        }

        public var DMv5: Color {
            return GeekBlue.DMv5
        }

        public var DMv6: Color {
            return GeekBlue.DMv6
        }

        public var DMv7: Color {
            return GeekBlue.DMv7
        }

        public var DMv8: Color {
            return GeekBlue.DMv8
        }

        public var DMv9: Color {
            return GeekBlue.DMv9
        }

        public var DMv10: Color {
            return GeekBlue.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#131629")
        public static let DMv2 = Color("#161d40")
        public static let DMv3 = Color("#1c2755")
        public static let DMv4 = Color("#203175")
        public static let DMv5 = Color("#263ea0")
        public static let DMv6 = Color("#2b4acb")
        public static let DMv7 = Color("#5273e0")
        public static let DMv8 = Color("#7f9ef3")
        public static let DMv9 = Color("#a8c1f8")
        public static let DMv10 = Color("#d2e0fa")
    }
    
    // MARK: - Golden Purple
    struct GoldenPurple: AntColorProtocol {
        public var v1: Color {
            return GoldenPurple.v1
        }
                
        public var v2: Color {
            return GoldenPurple.v2
        }

        public var v3: Color {
            return GoldenPurple.v3
        }

        public var v4: Color {
            return GoldenPurple.v4
        }

        public var v5: Color {
            return GoldenPurple.v5
        }

        public var v6: Color {
            return GoldenPurple.v6
        }

        public var v7: Color {
            return GoldenPurple.v7
        }

        public var v8: Color {
            return GoldenPurple.v8
        }

        public var v9: Color {
            return GoldenPurple.v9
        }

        public var v10: Color {
            return GoldenPurple.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#f9f0ff")
        public static let v2 = Color("#efdbff")
        public static let v3 = Color("#d3adf7")
        public static let v4 = Color("#b37feb")
        public static let v5 = Color("#9254de")
        public static let v6 = Color("#722ed1")
        public static let v7 = Color("#531dab")
        public static let v8 = Color("#391085")
        public static let v9 = Color("#22075e")
        public static let v10 = Color("#120338")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return GoldenPurple.DMv1
        }
                
        public var DMv2: Color {
            return GoldenPurple.DMv2
        }

        public var DMv3: Color {
            return GoldenPurple.DMv3
        }

        public var DMv4: Color {
            return GoldenPurple.DMv4
        }

        public var DMv5: Color {
            return GoldenPurple.DMv5
        }

        public var DMv6: Color {
            return GoldenPurple.DMv6
        }

        public var DMv7: Color {
            return GoldenPurple.DMv7
        }

        public var DMv8: Color {
            return GoldenPurple.DMv8
        }

        public var DMv9: Color {
            return GoldenPurple.DMv9
        }

        public var DMv10: Color {
            return GoldenPurple.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#1a1325")
        public static let DMv2 = Color("#24163a")
        public static let DMv3 = Color("#301c4d")
        public static let DMv4 = Color("#3e2069")
        public static let DMv5 = Color("#51258f")
        public static let DMv6 = Color("#642ab5")
        public static let DMv7 = Color("#854eca")
        public static let DMv8 = Color("#ab7ae0")
        public static let DMv9 = Color("#cda8f0")
        public static let DMv10 = Color("#ebd7fa")
    }
    
    // MARK: - Magenta
    struct Magenta: AntColorProtocol {
        public var v1: Color {
            return Magenta.v1
        }
                
        public var v2: Color {
            return Magenta.v2
        }

        public var v3: Color {
            return Magenta.v3
        }

        public var v4: Color {
            return Magenta.v4
        }

        public var v5: Color {
            return Magenta.v5
        }

        public var v6: Color {
            return Magenta.v6
        }

        public var v7: Color {
            return Magenta.v7
        }

        public var v8: Color {
            return Magenta.v8
        }

        public var v9: Color {
            return Magenta.v9
        }

        public var v10: Color {
            return Magenta.v10
        }
        
        public var v11: Color? {
            return nil
        }
        
        public var v12: Color? {
            return nil
        }
        
        public var v13: Color? {
            return nil
        }

        public static let v1 = Color("#fff0f6")
        public static let v2 = Color("#ffd6e7")
        public static let v3 = Color("#ffadd2")
        public static let v4 = Color("#ff85c0")
        public static let v5 = Color("#f759ab")
        public static let v6 = Color("#eb2f96")
        public static let v7 = Color("#c41d7f")
        public static let v8 = Color("#9e1068")
        public static let v9 = Color("#780650")
        public static let v10 = Color("#520339")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return Magenta.DMv1
        }
                
        public var DMv2: Color {
            return Magenta.DMv2
        }

        public var DMv3: Color {
            return Magenta.DMv3
        }

        public var DMv4: Color {
            return Magenta.DMv4
        }

        public var DMv5: Color {
            return Magenta.DMv5
        }

        public var DMv6: Color {
            return Magenta.DMv6
        }

        public var DMv7: Color {
            return Magenta.DMv7
        }

        public var DMv8: Color {
            return Magenta.DMv8
        }

        public var DMv9: Color {
            return Magenta.DMv9
        }

        public var DMv10: Color {
            return Magenta.DMv10
        }
        
        public var DMv11: Color? {
            return nil
        }
        
        public var DMv12: Color? {
            return nil
        }
        
        public var DMv13: Color? {
            return nil
        }
        
        public static let DMv1 = Color("#291321")
        public static let DMv2 = Color("#40162f")
        public static let DMv3 = Color("#551c3b")
        public static let DMv4 = Color("#75204f")
        public static let DMv5 = Color("#a02669")
        public static let DMv6 = Color("#cb2b83")
        public static let DMv7 = Color("#e0529c")
        public static let DMv8 = Color("#f37fb7")
        public static let DMv9 = Color("#f8a8cc")
        public static let DMv10 = Color("#fad2e3")
    }
    
    // MARK: - Gray
    struct Gray: AntColorProtocol {
        public var v1: Color {
            return Gray.v1
        }
                
        public var v2: Color {
            return Gray.v2
        }

        public var v3: Color {
            return Gray.v3
        }

        public var v4: Color {
            return Gray.v4
        }

        public var v5: Color {
            return Gray.v5
        }

        public var v6: Color {
            return Gray.v6
        }

        public var v7: Color {
            return Gray.v7
        }

        public var v8: Color {
            return Gray.v8
        }

        public var v9: Color {
            return Gray.v9
        }

        public var v10: Color {
            return Gray.v10
        }
        
        public var v11: Color? {
            return Gray.v11
        }
        
        public var v12: Color? {
            return Gray.v12
        }
        
        public var v13: Color? {
            return Gray.v13
        }

        public static let v1 = Color("#ffffff")
        public static let v2 = Color("#fafafa")
        public static let v3 = Color("#f5f5f5")
        public static let v4 = Color("#f0f0f0")
        public static let v5 = Color("#d9d9d9")
        public static let v6 = Color("#bfbfbf")
        public static let v7 = Color("#8c8c8c")
        public static let v8 = Color("#595959")
        public static let v9 = Color("#434343")
        public static let v10 = Color("#262626")
        public static let v11 = Color("#1f1f1f")
        public static let v12 = Color("#141414")
        public static let v13 = Color("#000000")
        
        /// DARK MODE COLOR
        public var DMv1: Color {
            return Gray.DMv1
        }
                
        public var DMv2: Color {
            return Gray.DMv2
        }

        public var DMv3: Color {
            return Gray.DMv3
        }

        public var DMv4: Color {
            return Gray.DMv4
        }

        public var DMv5: Color {
            return Gray.DMv5
        }

        public var DMv6: Color {
            return Gray.DMv6
        }

        public var DMv7: Color {
            return Gray.DMv7
        }

        public var DMv8: Color {
            return Gray.DMv8
        }

        public var DMv9: Color {
            return Gray.DMv9
        }

        public var DMv10: Color {
            return Gray.DMv10
        }
        
        public var DMv11: Color? {
            return Gray.DMv11
        }
        
        public var DMv12: Color? {
            return Gray.DMv12
        }
        
        public var DMv13: Color? {
            return Gray.DMv13
        }
        
        public static let DMv1 = Color("#ffffff")
        public static let DMv2 = Color("#fafafa")
        public static let DMv3 = Color("#f5f5f5")
        public static let DMv4 = Color("#f0f0f0")
        public static let DMv5 = Color("#d9d9d9")
        public static let DMv6 = Color("#bfbfbf")
        public static let DMv7 = Color("#8c8c8c")
        public static let DMv8 = Color("#595959")
        public static let DMv9 = Color("#434343")
        public static let DMv10 = Color("#262626")
        public static let DMv11 = Color("#1f1f1f")
        public static let DMv12 = Color("#141414")
        public static let DMv13 = Color("#000000")
    }
}
