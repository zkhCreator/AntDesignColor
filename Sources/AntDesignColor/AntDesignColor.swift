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
        /// Dust Red v1 **#fff1f0**
        public static let v1 = Color("#fff1f0")
        /// Dust Red v2 **#ffccc7**
        public static let v2 = Color("#ffccc7")
        /// Dust Red v3 **#ffa39e**
        public static let v3 = Color("#ffa39e")
        /// Dust Red v4 **#ff7875**
        public static let v4 = Color("#ff7875")
        /// Dust Red v5 **#ff4d4f**
        public static let v5 = Color("#ff4d4f")
        /// Dust Red v6 **#f5222d**
        public static let v6 = Color("#f5222d")
        /// Dust Red v7 **#cf1322**
        public static let v7 = Color("#cf1322")
        /// Dust Red v8 **#a8071a**
        public static let v8 = Color("#a8071a")
        /// Dust Red v9 **#820014**
        public static let v9 = Color("#820014")
        /// Dust Red v10 **#5c0011**
        public static let v10 = Color("#5c0011")

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
        
        /// Volcano v1 **#fff2e8**
        public static let v1 = Color("#fff2e8")
        /// Volcano v2 **#ffd8bf**
        public static let v2 = Color("#ffd8bf")
        /// Volcano v3 **#ffbb96**
        public static let v3 = Color("#ffbb96")
        /// Volcano v4 **#ff9c6e**
        public static let v4 = Color("#ff9c6e")
        /// Volcano v5 **#ff7a45**
        public static let v5 = Color("#ff7a45")
        /// Volcano v6 **#fa541c**
        public static let v6 = Color("#fa541c")
        /// Volcano v7 **#d4380d**
        public static let v7 = Color("#d4380d")
        /// Volcano v8 **#ad2102**
        public static let v8 = Color("#ad2102")
        /// Volcano v9 **#871400**
        public static let v9 = Color("#871400")
        /// Volcano v10 **#610b00**
        public static let v10 = Color("#610b00")
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
        
        /// SunsetOrange v1 **#fff7e6**
        public static let v1 = Color("#fff7e6")
        /// SunsetOrange v2 **#ffe7ba**
        public static let v2 = Color("#ffe7ba")
        /// SunsetOrange v3 **#ffd591**
        public static let v3 = Color("#ffd591")
        /// SunsetOrange v4 **#ffc069**
        public static let v4 = Color("#ffc069")
        /// SunsetOrange v5 **#ffa940**
        public static let v5 = Color("#ffa940")
        /// SunsetOrange v6 **#d46b08**
        public static let v6 = Color("#fa8c16")
        /// SunsetOrange v7 **#d46b08**
        public static let v7 = Color("#d46b08")
        /// SunsetOrange v8 **#ad4e00**
        public static let v8 = Color("#ad4e00")
        /// SunsetOrange v9 **#873800**
        public static let v9 = Color("#873800")
        /// SunsetOrange v10 **#612500**
        public static let v10 = Color("#612500")
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
        
        /// CalendulaGold v1 **#fffbe6**
        public static let v1 = Color("#fffbe6")
        /// CalendulaGold v2 **#fff1b8**
        public static let v2 = Color("#fff1b8")
        /// CalendulaGold v3 **#ffe58f**
        public static let v3 = Color("#ffe58f")
        /// CalendulaGold v4 **#ffd666**
        public static let v4 = Color("#ffd666")
        /// CalendulaGold v5 **#ffc53d**
        public static let v5 = Color("#ffc53d")
        /// CalendulaGold v6 **#faad14**
        public static let v6 = Color("#faad14")
        /// CalendulaGold v7 **#d48806**
        public static let v7 = Color("#d48806")
        /// CalendulaGold v8 **#ad6800**
        public static let v8 = Color("#ad6800")
        /// CalendulaGold v9 **#874d00**
        public static let v9 = Color("#874d00")
        /// CalendulaGold v10 **#613400**
        public static let v10 = Color("#613400")
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
        
        /// SunriseYellow v1 **#feffe6**
        public static let v1 = Color("#feffe6")
        /// SunriseYellow v2 **#ffffb8**
        public static let v2 = Color("#ffffb8")
        /// SunriseYellow v3 **#fffb8f**
        public static let v3 = Color("#fffb8f")
        /// SunriseYellow v4 **#fff566**
        public static let v4 = Color("#fff566")
        /// SunriseYellow v5 **#ffec3d**
        public static let v5 = Color("#ffec3d")
        /// SunriseYellow v6 **#fadb14**
        public static let v6 = Color("#fadb14")
        /// SunriseYellow v7 **#d4b106**
        public static let v7 = Color("#d4b106")
        /// SunriseYellow v8 **#ad8b00**
        public static let v8 = Color("#ad8b00")
        /// SunriseYellow v9 **#876800**
        public static let v9 = Color("#876800")
        /// SunriseYellow v10 **#614700**
        public static let v10 = Color("#614700")
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
        
        /// Lime v1 **#fcffe6**
        public static let v1 = Color("#fcffe6")
        /// Lime v2 **#f4ffb8**
        public static let v2 = Color("#f4ffb8")
        /// Lime v3 **#eaff8f**
        public static let v3 = Color("#eaff8f")
        /// Lime v4 **#d3f261**
        public static let v4 = Color("#d3f261")
        /// Lime v5 **#bae637**
        public static let v5 = Color("#bae637")
        /// Lime v6 **#a0d911**
        public static let v6 = Color("#a0d911")
        /// Lime v7 **#7cb305**
        public static let v7 = Color("#7cb305")
        /// Lime v8 **#5b8c00**
        public static let v8 = Color("#5b8c00")
        /// Lime v9 **#3f6600**
        public static let v9 = Color("#3f6600")
        /// Lime v10 **#254000**
        public static let v10 = Color("#254000")
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
        
        /// PolarGreen v1 **#f6ffed**
        public static let v1 = Color("#f6ffed")
        /// PolarGreen v2 **#d9f7be**
        public static let v2 = Color("#d9f7be")
        /// PolarGreen v3 **#b7eb8f**
        public static let v3 = Color("#b7eb8f")
        /// PolarGreen v4 **#95de64**
        public static let v4 = Color("#95de64")
        /// PolarGreen v5 **#73d13d**
        public static let v5 = Color("#73d13d")
        /// PolarGreen v6 **#52c41a**
        public static let v6 = Color("#52c41a")
        /// PolarGreen v7 **#389e0d**
        public static let v7 = Color("#389e0d")
        /// PolarGreen v8 **#237804**
        public static let v8 = Color("#237804")
        /// PolarGreen v9 **#135200**
        public static let v9 = Color("#135200")
        /// PolarGreen v10 **#092b00**
        public static let v10 = Color("#092b00")
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
        
        /// Cyan v1 **#e6fffb**
        public static let v1 = Color("#e6fffb")
        /// Cyan v2 **#b5f5ec**
        public static let v2 = Color("#b5f5ec")
        /// Cyan v3 **#87e8de**
        public static let v3 = Color("#87e8de")
        /// Cyan v4 **#5cdbd3**
        public static let v4 = Color("#5cdbd3")
        /// Cyan v5 **#36cfc9**
        public static let v5 = Color("#36cfc9")
        /// Cyan v6 **#13c2c2**
        public static let v6 = Color("#13c2c2")
        /// Cyan v7 **#08979c**
        public static let v7 = Color("#08979c")
        /// Cyan v8 **#006d75**
        public static let v8 = Color("#006d75")
        /// Cyan v9 **#00474f**
        public static let v9 = Color("#00474f")
        /// Cyan v10 **#002329**
        public static let v10 = Color("#002329")
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
        
        /// DaybreakBlue v1 **#e6f7ff**
        public static let v1 = Color("#e6f7ff")
        /// DaybreakBlue v2 **#bae7ff**
        public static let v2 = Color("#bae7ff")
        /// DaybreakBlue v3 **#91d5ff**
        public static let v3 = Color("#91d5ff")
        /// DaybreakBlue v4 **#69c0ff**
        public static let v4 = Color("#69c0ff")
        /// DaybreakBlue v5 **#40a9ff**
        public static let v5 = Color("#40a9ff")
        /// DaybreakBlue v6 **#1890ff**
        public static let v6 = Color("#1890ff")
        /// DaybreakBlue v7 **#096dd9**
        public static let v7 = Color("#096dd9")
        /// DaybreakBlue v8 **#0050b3**
        public static let v8 = Color("#0050b3")
        /// DaybreakBlue v9 **#003a8c**
        public static let v9 = Color("#003a8c")
        /// DaybreakBlue v10 **#002766**
        public static let v10 = Color("#002766")
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
        
        /// GeekBlue v1 **#f0f5ff**
        public static let v1 = Color("#f0f5ff")
        /// GeekBlue v2 **#d6e4ff**
        public static let v2 = Color("#d6e4ff")
        /// GeekBlue v3 **#adc6ff**
        public static let v3 = Color("#adc6ff")
        /// GeekBlue v4 **#85a5ff**
        public static let v4 = Color("#85a5ff")
        /// GeekBlue v5 **#597ef7**
        public static let v5 = Color("#597ef7")
        /// GeekBlue v6 **#2f54eb**
        public static let v6 = Color("#2f54eb")
        /// GeekBlue v7 **#1d39c4**
        public static let v7 = Color("#1d39c4")
        /// GeekBlue v8 **#10239e**
        public static let v8 = Color("#10239e")
        /// GeekBlue v9 **#061178**
        public static let v9 = Color("#061178")
        /// GeekBlue v10 **#030852**
        public static let v10 = Color("#030852")
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
        
        /// GoldenPurple v1 **#f9f0ff**
        public static let v1 = Color("#f9f0ff")
        /// GoldenPurple v2 **#efdbff**
        public static let v2 = Color("#efdbff")
        /// GoldenPurple v3 **#d3adf7**
        public static let v3 = Color("#d3adf7")
        /// GoldenPurple v4 **#b37feb**
        public static let v4 = Color("#b37feb")
        /// GoldenPurple v5 **#9254de**
        public static let v5 = Color("#9254de")
        /// GoldenPurple v6 **#722ed1**
        public static let v6 = Color("#722ed1")
        /// GoldenPurple v7 **#531dab**
        public static let v7 = Color("#531dab")
        /// GoldenPurple v8 **#391085**
        public static let v8 = Color("#391085")
        /// GoldenPurple v9 **#22075e**
        public static let v9 = Color("#22075e")
        /// GoldenPurple v10 **#120338**
        public static let v10 = Color("#120338")
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
        
        /// Magenta v1 **#fff0f6**
        public static let v1 = Color("#fff0f6")
        /// Magenta v2 **#ffd6e7**
        public static let v2 = Color("#ffd6e7")
        /// Magenta v3 **#ffadd2**
        public static let v3 = Color("#ffadd2")
        /// Magenta v4 **#ff85c0**
        public static let v4 = Color("#ff85c0")
        /// Magenta v5 **#f759ab**
        public static let v5 = Color("#f759ab")
        /// Magenta v6 **#eb2f96**
        public static let v6 = Color("#eb2f96")
        /// Magenta v7 **#c41d7f**
        public static let v7 = Color("#c41d7f")
        /// Magenta v8 **#9e1068**
        public static let v8 = Color("#9e1068")
        /// Magenta v9 **#780650**
        public static let v9 = Color("#780650")
        /// Magenta v10 **#520339**
        public static let v10 = Color("#520339")
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
        
        /// Gray v1 **#ffffff**
        public static let v1 = Color("#ffffff")
        /// Gray v2 **#fafafa**
        public static let v2 = Color("#fafafa")
        /// Gray v3 **#f5f5f5**
        public static let v3 = Color("#f5f5f5")
        /// Gray v4 **#f0f0f0**
        public static let v4 = Color("#f0f0f0")
        /// Gray v5 **#d9d9d9**
        public static let v5 = Color("#d9d9d9")
        /// Gray v6 **#bfbfbf**
        public static let v6 = Color("#bfbfbf")
        /// Gray v7 **#8c8c8c**
        public static let v7 = Color("#8c8c8c")
        /// Gray v8 **#595959**
        public static let v8 = Color("#595959")
        /// Gray v9 **#434343**
        public static let v9 = Color("#434343")
        /// Gray v10 **#262626**
        public static let v10 = Color("#262626")
        /// Gray v11 **#1f1f1f**
        public static let v11 = Color("#1f1f1f")
        /// Gray v12 **#141414**
        public static let v12 = Color("#141414")
        /// Gray v13 **#000000**
        public static let v13 = Color("#000000")

    }
}
