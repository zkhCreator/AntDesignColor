//
//  AntDesignColor.swift
//  AntDesignColor
//
//  Created by zkhCreator on 2020/9/5.
//

import UIKit
import UIColor_Hex_Swift

// Usage 1: UIColor.AntColor.dustRed.v1 -> UIColor
// Usage 2: UIColor.AntColor.color(.DustRed).v1 -> Color

protocol AntColorProtocol {
    var v1: UIColor { get }
    var v2: UIColor { get }
    var v3: UIColor { get }
    var v4: UIColor { get }
    var v5: UIColor { get }
    var v6: UIColor { get }
    var v7: UIColor { get }
    var v8: UIColor { get }
    var v9: UIColor { get }
    var v10: UIColor { get }
}

// MARK: - Hue
extension UIColor {
    static var defaultDarkColor = UIColor("#31465A")
    static var defaultLightColor = UIColor.white
    
    func foregroundColor() -> UIColor {
        return self.contrastRatio(UIColor.defaultDarkColor) >= 6.0 ? UIColor.defaultDarkColor : UIColor.defaultLightColor
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

    func contrastRatio(_ color: UIColor) -> CGFloat {
        // https://www.w3.org/TR/WCAG20-TECHS/G18.html#G18-tests
        
        let luminance1 = self.luminance()
        let luminance2 = color.luminance()

        let luminanceDarker = min(luminance1, luminance2)
        let luminanceLighter = max(luminance1, luminance2)

        return (luminanceLighter + 0.05) / (luminanceDarker + 0.05)
    }
}
extension UIColor {
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

extension UIColor.Ant {
    // MARK: - Dust Red
    struct DustRed: AntColorProtocol {
        var v1: UIColor {
            return DustRed.v1
        }
                
        var v2: UIColor {
            return DustRed.v2
        }

        var v3: UIColor {
            return DustRed.v3
        }

        var v4: UIColor {
            return DustRed.v4
        }

        var v5: UIColor {
            return DustRed.v5
        }

        var v6: UIColor {
            return DustRed.v6
        }

        var v7: UIColor {
            return DustRed.v7
        }

        var v8: UIColor {
            return DustRed.v8
        }

        var v9: UIColor {
            return DustRed.v9
        }

        var v10: UIColor {
            return DustRed.v10
        }
        
        static let v1 = UIColor("#fff1f0")
        static let v2 = UIColor("#ffccc7")
        static let v3 = UIColor("#ffa39e")
        static let v4 = UIColor("#ff7875")
        static let v5 = UIColor("#ff4d4f")
        static let v6 = UIColor("#f5222d")
        static let v7 = UIColor("#cf1322")
        static let v8 = UIColor("#a8071a")
        static let v9 = UIColor("#820014")
        static let v10 = UIColor("#5c0011")
    }
    
    // MARK: - Volcano
    struct Volcano: AntColorProtocol {
        var v1: UIColor {
            return Volcano.v1
        }
                
        var v2: UIColor {
            return Volcano.v2
        }

        var v3: UIColor {
            return Volcano.v3
        }

        var v4: UIColor {
            return Volcano.v4
        }

        var v5: UIColor {
            return Volcano.v5
        }

        var v6: UIColor {
            return Volcano.v6
        }

        var v7: UIColor {
            return Volcano.v7
        }

        var v8: UIColor {
            return Volcano.v8
        }

        var v9: UIColor {
            return Volcano.v9
        }

        var v10: UIColor {
            return Volcano.v10
        }
        
        static let v1 = UIColor("#fff2e8")
        static let v2 = UIColor("#ffd8bf")
        static let v3 = UIColor("#ffbb96")
        static let v4 = UIColor("#ff9c6e")
        static let v5 = UIColor("#ff7a45")
        static let v6 = UIColor("#fa541c")
        static let v7 = UIColor("#d4380d")
        static let v8 = UIColor("#ad2102")
        static let v9 = UIColor("#871400")
        static let v10 = UIColor("#610b00")
    }
    
    // MARK: - Sunset Orange
    struct SunsetOrange: AntColorProtocol {
        var v1: UIColor {
            return SunsetOrange.v1
        }
                
        var v2: UIColor {
            return SunsetOrange.v2
        }

        var v3: UIColor {
            return SunsetOrange.v3
        }

        var v4: UIColor {
            return SunsetOrange.v4
        }

        var v5: UIColor {
            return SunsetOrange.v5
        }

        var v6: UIColor {
            return SunsetOrange.v6
        }

        var v7: UIColor {
            return SunsetOrange.v7
        }

        var v8: UIColor {
            return SunsetOrange.v8
        }

        var v9: UIColor {
            return SunsetOrange.v9
        }

        var v10: UIColor {
            return SunsetOrange.v10
        }
        
        static let v1 = UIColor("#fff7e6")
        static let v2 = UIColor("#ffe7ba")
        static let v3 = UIColor("#ffd591")
        static let v4 = UIColor("#ffc069")
        static let v5 = UIColor("#ffa940")
        static let v6 = UIColor("#d46b08")
        static let v7 = UIColor("#d46b08")
        static let v8 = UIColor("#ad4e00")
        static let v9 = UIColor("#873800")
        static let v10 = UIColor("#612500")
    }
    
    // MARK: - Calendula Gold
    struct CalendulaGold: AntColorProtocol {
        var v1: UIColor {
            return CalendulaGold.v1
        }
                
        var v2: UIColor {
            return CalendulaGold.v2
        }

        var v3: UIColor {
            return CalendulaGold.v3
        }

        var v4: UIColor {
            return CalendulaGold.v4
        }

        var v5: UIColor {
            return CalendulaGold.v5
        }

        var v6: UIColor {
            return CalendulaGold.v6
        }

        var v7: UIColor {
            return CalendulaGold.v7
        }

        var v8: UIColor {
            return CalendulaGold.v8
        }

        var v9: UIColor {
            return CalendulaGold.v9
        }

        var v10: UIColor {
            return CalendulaGold.v10
        }
        
        static let v1 = UIColor("#fffbe6")
        static let v2 = UIColor("#fff1b8")
        static let v3 = UIColor("#ffe58f")
        static let v4 = UIColor("#ffd666")
        static let v5 = UIColor("#ffc53d")
        static let v6 = UIColor("#faad14")
        static let v7 = UIColor("#d48806")
        static let v8 = UIColor("#ad6800")
        static let v9 = UIColor("#874d00")
        static let v10 = UIColor("#613400")
    }
    
    // MARK: - Sunrise Yellow
    struct SunriseYellow: AntColorProtocol {
        var v1: UIColor {
            return SunriseYellow.v1
        }
                
        var v2: UIColor {
            return SunriseYellow.v2
        }

        var v3: UIColor {
            return SunriseYellow.v3
        }

        var v4: UIColor {
            return SunriseYellow.v4
        }

        var v5: UIColor {
            return SunriseYellow.v5
        }

        var v6: UIColor {
            return SunriseYellow.v6
        }

        var v7: UIColor {
            return SunriseYellow.v7
        }

        var v8: UIColor {
            return SunriseYellow.v8
        }

        var v9: UIColor {
            return SunriseYellow.v9
        }

        var v10: UIColor {
            return SunriseYellow.v10
        }
        
        static let v1 = UIColor("#feffe6")
        static let v2 = UIColor("#ffffb8")
        static let v3 = UIColor("#fffb8f")
        static let v4 = UIColor("#fff566")
        static let v5 = UIColor("#ffec3d")
        static let v6 = UIColor("#fadb14")
        static let v7 = UIColor("#d4b106")
        static let v8 = UIColor("#ad8b00")
        static let v9 = UIColor("#876800")
        static let v10 = UIColor("#614700")
    }
    
    // MARK: - Lime
    struct Lime: AntColorProtocol {
        var v1: UIColor {
            return Lime.v1
        }
                
        var v2: UIColor {
            return Lime.v2
        }

        var v3: UIColor {
            return Lime.v3
        }

        var v4: UIColor {
            return Lime.v4
        }

        var v5: UIColor {
            return Lime.v5
        }

        var v6: UIColor {
            return Lime.v6
        }

        var v7: UIColor {
            return Lime.v7
        }

        var v8: UIColor {
            return Lime.v8
        }

        var v9: UIColor {
            return Lime.v9
        }

        var v10: UIColor {
            return Lime.v10
        }
        
        static let v1 = UIColor("#fcffe6")
        static let v2 = UIColor("#f4ffb8")
        static let v3 = UIColor("#eaff8f")
        static let v4 = UIColor("#d3f261")
        static let v5 = UIColor("#bae637")
        static let v6 = UIColor("#a0d911")
        static let v7 = UIColor("#7cb305")
        static let v8 = UIColor("#5b8c00")
        static let v9 = UIColor("#3f6600")
        static let v10 = UIColor("#254000")
    }
    
    // MARK: - Polar Green
    struct PolarGreen: AntColorProtocol {
        var v1: UIColor {
            return PolarGreen.v1
        }
                
        var v2: UIColor {
            return PolarGreen.v2
        }

        var v3: UIColor {
            return PolarGreen.v3
        }

        var v4: UIColor {
            return PolarGreen.v4
        }

        var v5: UIColor {
            return PolarGreen.v5
        }

        var v6: UIColor {
            return PolarGreen.v6
        }

        var v7: UIColor {
            return PolarGreen.v7
        }

        var v8: UIColor {
            return PolarGreen.v8
        }

        var v9: UIColor {
            return PolarGreen.v9
        }

        var v10: UIColor {
            return PolarGreen.v10
        }
        
        static let v1 = UIColor("#f6ffed")
        static let v2 = UIColor("#d9f7be")
        static let v3 = UIColor("#b7eb8f")
        static let v4 = UIColor("#95de64")
        static let v5 = UIColor("#73d13d")
        static let v6 = UIColor("#52c41a")
        static let v7 = UIColor("#389e0d")
        static let v8 = UIColor("#237804")
        static let v9 = UIColor("#135200")
        static let v10 = UIColor("#092b00")
    }
    
    // MARK: - Cyan
    struct Cyan: AntColorProtocol {
        var v1: UIColor {
            return Cyan.v1
        }
                
        var v2: UIColor {
            return Cyan.v2
        }

        var v3: UIColor {
            return Cyan.v3
        }

        var v4: UIColor {
            return Cyan.v4
        }

        var v5: UIColor {
            return Cyan.v5
        }

        var v6: UIColor {
            return Cyan.v6
        }

        var v7: UIColor {
            return Cyan.v7
        }

        var v8: UIColor {
            return Cyan.v8
        }

        var v9: UIColor {
            return Cyan.v9
        }

        var v10: UIColor {
            return Cyan.v10
        }
        
        static let v1 = UIColor("#e6fffb")
        static let v2 = UIColor("#b5f5ec")
        static let v3 = UIColor("#87e8de")
        static let v4 = UIColor("#5cdbd3")
        static let v5 = UIColor("#36cfc9")
        static let v6 = UIColor("#13c2c2")
        static let v7 = UIColor("#08979c")
        static let v8 = UIColor("#006d75")
        static let v9 = UIColor("#00474f")
        static let v10 = UIColor("#002329")
    }
    
    // MARK: - Daybreak Blue
    struct DaybreakBlue: AntColorProtocol {
        var v1: UIColor {
            return DaybreakBlue.v1
        }
                
        var v2: UIColor {
            return DaybreakBlue.v2
        }

        var v3: UIColor {
            return DaybreakBlue.v3
        }

        var v4: UIColor {
            return DaybreakBlue.v4
        }

        var v5: UIColor {
            return DaybreakBlue.v5
        }

        var v6: UIColor {
            return DaybreakBlue.v6
        }

        var v7: UIColor {
            return DaybreakBlue.v7
        }

        var v8: UIColor {
            return DaybreakBlue.v8
        }

        var v9: UIColor {
            return DaybreakBlue.v9
        }

        var v10: UIColor {
            return DaybreakBlue.v10
        }
        
        static let v1 = UIColor("#e6f7ff")
        static let v2 = UIColor("#bae7ff")
        static let v3 = UIColor("#91d5ff")
        static let v4 = UIColor("#69c0ff")
        static let v5 = UIColor("#40a9ff")
        static let v6 = UIColor("#1890ff")
        static let v7 = UIColor("#096dd9")
        static let v8 = UIColor("#0050b3")
        static let v9 = UIColor("#003a8c")
        static let v10 = UIColor("#002766")
    }
    
    // MARK: - Geek Blue
    struct GeekBlue: AntColorProtocol {
        var v1: UIColor {
            return GeekBlue.v1
        }
                
        var v2: UIColor {
            return GeekBlue.v2
        }

        var v3: UIColor {
            return GeekBlue.v3
        }

        var v4: UIColor {
            return GeekBlue.v4
        }

        var v5: UIColor {
            return GeekBlue.v5
        }

        var v6: UIColor {
            return GeekBlue.v6
        }

        var v7: UIColor {
            return GeekBlue.v7
        }

        var v8: UIColor {
            return GeekBlue.v8
        }

        var v9: UIColor {
            return GeekBlue.v9
        }

        var v10: UIColor {
            return GeekBlue.v10
        }
        
        static let v1 = UIColor("#f0f5ff")
        static let v2 = UIColor("#d6e4ff")
        static let v3 = UIColor("#adc6ff")
        static let v4 = UIColor("#85a5ff")
        static let v5 = UIColor("#597ef7")
        static let v6 = UIColor("#2f54eb")
        static let v7 = UIColor("#1d39c4")
        static let v8 = UIColor("#10239e")
        static let v9 = UIColor("#061178")
        static let v10 = UIColor("#030852")
    }
    
    // MARK: - Golden Purple
    struct GoldenPurple: AntColorProtocol {
        var v1: UIColor {
            return GoldenPurple.v1
        }
                
        var v2: UIColor {
            return GoldenPurple.v2
        }

        var v3: UIColor {
            return GoldenPurple.v3
        }

        var v4: UIColor {
            return GoldenPurple.v4
        }

        var v5: UIColor {
            return GoldenPurple.v5
        }

        var v6: UIColor {
            return GoldenPurple.v6
        }

        var v7: UIColor {
            return GoldenPurple.v7
        }

        var v8: UIColor {
            return GoldenPurple.v8
        }

        var v9: UIColor {
            return GoldenPurple.v9
        }

        var v10: UIColor {
            return GoldenPurple.v10
        }
        
        static let v1 = UIColor("#f9f0ff")
        static let v2 = UIColor("#efdbff")
        static let v3 = UIColor("#d3adf7")
        static let v4 = UIColor("#b37feb")
        static let v5 = UIColor("#9254de")
        static let v6 = UIColor("#722ed1")
        static let v7 = UIColor("#531dab")
        static let v8 = UIColor("#391085")
        static let v9 = UIColor("#22075e")
        static let v10 = UIColor("#120338")
    }
    
    // MARK: - Magenta
    struct Magenta: AntColorProtocol {
        var v1: UIColor {
            return Magenta.v1
        }
                
        var v2: UIColor {
            return Magenta.v2
        }

        var v3: UIColor {
            return Magenta.v3
        }

        var v4: UIColor {
            return Magenta.v4
        }

        var v5: UIColor {
            return Magenta.v5
        }

        var v6: UIColor {
            return Magenta.v6
        }

        var v7: UIColor {
            return Magenta.v7
        }

        var v8: UIColor {
            return Magenta.v8
        }

        var v9: UIColor {
            return Magenta.v9
        }

        var v10: UIColor {
            return Magenta.v10
        }
        
        static let v1 = UIColor("#fff0f6")
        static let v2 = UIColor("#ffd6e7")
        static let v3 = UIColor("#ffadd2")
        static let v4 = UIColor("#ff85c0")
        static let v5 = UIColor("#f759ab")
        static let v6 = UIColor("#eb2f96")
        static let v7 = UIColor("#c41d7f")
        static let v8 = UIColor("#9e1068")
        static let v9 = UIColor("#780650")
        static let v10 = UIColor("#520339")
    }
    
    // MARK: - Gray
    struct Gray: AntColorProtocol {
        var v1: UIColor {
            return Gray.v1
        }
                
        var v2: UIColor {
            return Gray.v2
        }

        var v3: UIColor {
            return Gray.v3
        }

        var v4: UIColor {
            return Gray.v4
        }

        var v5: UIColor {
            return Gray.v5
        }

        var v6: UIColor {
            return Gray.v6
        }

        var v7: UIColor {
            return Gray.v7
        }

        var v8: UIColor {
            return Gray.v8
        }

        var v9: UIColor {
            return Gray.v9
        }

        var v10: UIColor {
            return Gray.v10
        }
        
        static let v1 = UIColor("#ffffff")
        static let v2 = UIColor("#fafafa")
        static let v3 = UIColor("#f5f5f5")
        static let v4 = UIColor("#e8e8e8")
        static let v5 = UIColor("#d9d9d9")
        static let v6 = UIColor("#bfbfbf")
        static let v7 = UIColor("#8c8c8c")
        static let v8 = UIColor("#595959")
        static let v9 = UIColor("#262626")
        static let v10 = UIColor("#000000")
    }
}
