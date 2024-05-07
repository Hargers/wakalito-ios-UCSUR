//
//  wakalitoData.swift
//  wakalito
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

struct wakalitoData {
    // String representation of each
    enum Key: String {
        case op_br = "["
        case vert = "|"
        case hor = "-"
        case pona = "ᴗ"
        case ike = "ᴖ"
        case dot = "•"

        case cl_br = "]"
        case poki = "⨆"
        case circle = "○"
        case box = "▢"
        case down = "⌄"
        case up = "⌃"

        case colon = ":"
        case comma = ","
        case luka = "ᕄ"
        case sound = "‴"
        case la = "ɔ"

        case unknown = "?"

        func sitelen() -> UIImage {
            switch self {
            case .op_br: return UIImage(named: "op_br")!
            case .vert: return UIImage(named: "vert")!
            case .hor: return UIImage(named: "hor")!
            case .pona: return UIImage(named: "pona")!
            case .ike: return UIImage(named: "ike")!
            case .dot: return UIImage(named: "dot")!
            case .cl_br: return UIImage(named: "cl_br")!
            case .poki: return UIImage(named: "poki")!
            case .circle: return UIImage(named: "circle")!
            case .box: return UIImage(named: "box")!
            case .down: return UIImage(named: "down")!
            case .up: return UIImage(named: "up")!
            case .colon: return UIImage(named: "colon")!
            case .comma: return UIImage(named: "comma")!
            case .luka: return UIImage(named: "luka")!
            case .sound: return UIImage(named: "sound")!
            case .la: return UIImage(named: "la")!
            default: return UIImage()
            }
        }
    }

    static let code: [[Key]: String] = [
                // Formatting
                [.hor]: "　", // Fullwidth space
                [.hor, .hor, .hor]: "‌", // Zero width joiner
                [.dot]: "󱦜", // Dot
                [.colon]: "󱦝", // Colon
                [.op_br]: "󱦐", // Cartouche start
                [.cl_br]: "󱦑", // Cartouche end
                [.op_br, .op_br]: "󱦗", // Start left-combining long glyph
                [.cl_br, .cl_br]: "󱦘", // End left-combing long glyph
                [.op_br, .op_br, .op_br]: "󱦚", // Start right-combining long glyph
                [.cl_br, .cl_br, .cl_br]: "󱦛", // End right-combing long glyph
                [.dot, .up]: "󱦕", // Stacking joiner
                [.dot, .down]: "󱦖", // Scaling joiner
                [.box, .op_br]: "「", // nimi te
                [.box, .cl_br]: "」", // nimi to
        
                // nimi pu
                [.vert, .box, .down]: "󱤴󱥡󱤂",	
                [.vert, .circle, .dot]: "󱤀",
                [.vert, .dot, .dot]: "󱤀",
                [.vert, .dot, .vert, .dot]: "󱤀 󱤀 󱤀 ",
                [.dot, .dot, .hor, .hor, .hor, .circle]: "󱤁",
                [.circle, .hor, .hor, .hor, .dot, .dot]: "󱤁",
                [.down, .up]: "󱤂",
                [.vert, .la, .hor]: "󱤃",
                [.vert, .la, .hor, .up]: "󱤃",
                [.la, .vert, .hor]: "󱤃",
                [.la, .vert, .hor, .up]: "󱤃",
                [.circle, .la]: "󱤄",
                [.dot, .poki, .dot]: "󱤅",
                [.up, .down]: "󱤆",
                [.down, .vert]: "󱤇",
                [.hor, .up, .hor]: "󱤈",
                [.up, .up]: "󱤉",
                [.vert, .hor, .vert]: "󱤊",
                [.pona, .vert, .ike]: "󱤋",
                [.circle]: "󱤌",
                [.ike]: "󱤍",
                [.box, .vert]: "󱤎",
                [.vert, .box]: "󱤎",
                [.poki, .dot, .dot]: "󱤏",
                [.dot, .dot, .poki, .dot, .dot]: "󱤏",
                [.luka, .luka, .luka]: "󱤐",
                [.circle, .up]: "󱤑",
                [.circle, .box, .up, .hor]: "󱤒",
                [.circle, .pona, .hor]: "󱤓",
                [.up, .circle]: "󱤔",
                [.pona, .hor, .sound]: "󱤕",
                [.hor, .hor, .up]: "󱤖",
                [.circle, .circle, .vert]: "󱤗",
                [.vert, .circle, .circle]: "󱤗",
                [.circle, .vert, .circle]: "󱤗",
                [.vert, .vert, .down]: "󱤘",
                [.box, .vert, .luka]: "󱤙",
                [.vert, .box, .luka]: "󱤙",
                [.luka, .vert, .box]: "󱤙",
                [.luka, .box, .vert]: "󱤙",
                [.box, .luka, .vert]: "󱤙",
                [.ike, .ike, .pona, .vert]: "󱤚",
                [.ike, .pona, .ike, .vert]: "󱤚",
                [.down, .up, .hor]: "󱤛",
                [.down, .vert, .vert, .hor]: "󱤛",
                [.ike, .circle, .pona]: "󱤜",
                [.pona, .circle, .ike]: "󱤜",
                [.down, .up, .down, .up]: "󱤝",
                [.la, .la, .la, .la]: "󱤝",
                [.up, .down, .up, .down]: "󱤝",
                [.up, .hor]: "󱤞",
                [.up, .hor, .hor, .hor]: "󱤞",
                [.circle, .circle, .circle]: "󱤟",
                [.la, .dot]: "󱤠",
                [.dot, .la]: "󱤠",
                [.la]: "󱤡",
                [.hor, .hor, .circle]: "󱤢",
                [.circle, .circle, .vert, .up, .hor]: "󱤣",
                [.vert, .circle, .circle, .up, .hor]: "󱤣",
                [.vert, .circle, .circle, .hor, .up]: "󱤣",
                [.circle, .circle, .vert, .hor, .up]: "󱤣",
                [.up, .hor, .vert, .circle, .circle]: "󱤣",
                [.up, .hor, .circle, .vert, .circle]: "󱤣",
                [.circle, .hor]: "󱤤",
                [.box, .vert, .vert, .vert]: "󱤥",
                [.vert, .vert, .vert, .box]: "󱤥",
                [.down, .hor, .up]: "󱤦",
                [.up, .down, .hor]: "󱤦",
                [.up]: "󱤧",
                [.down]: "󱤨",
                [.pona, .ike]: "󱤩",
                [.ike, .pona]: "󱤩",
                [.box]: "󱤪",
                [.pona, .hor, .up, .hor]: "󱤫",
                [.hor, .pona, .up, .hor]: "󱤫",
                [.up, .hor, .pona, .hor]: "󱤫",
                [.hor, .up, .pona, .hor]: "󱤫",
                [.up, .hor, .hor, .pona]: "󱤫",
                [.hor, .up, .hor, .pona]: "󱤫",
                [.dot, .hor]: "󱤬",
                [.hor, .dot]: "󱤬",
                [.luka]: "󱤭",
                [.circle, .dot]: "󱤮",
                [.pona, .vert, .vert]: "󱤯",
                [.vert, .pona, .vert]: "󱤯",
                [.vert, .vert, .pona]: "󱤯",
                [.circle, .hor, .vert]: "󱤰",
                [.dot, .circle]: "󱤱",
                [.circle, .pona]: "󱤲",
                [.hor, .circle, .hor]: "󱤲",
                [.ike, .circle]: "󱤳",
                [.circle, .ike]: "󱤳",
                [.vert, .circle]: "󱤴",
                [.up, .circle, .up]: "󱤵",
                [.pona, .hor, .luka]: "󱤶",
                [.hor, .pona, .luka]: "󱤶",
                [.luka, .hor, .pona]: "󱤶",
                [.luka, .pona, .hor]: "󱤶",
                [.circle, .down, .up, .down, .up]: "󱤷",
                [.circle, .up, .down, .up, .down]: "󱤷",
                [.circle, .down, .up]: "󱤷",
                [.dot, .hor, .vert, .hor]: "󱤸",
                [.dot, .op_br]: "󱤸",
                [.circle, .circle, .dot, .circle]: "󱤹",
                [.circle, .dot, .circle, .circle]: "󱤹",
                [.circle, .circle, .circle, .dot]: "󱤹",
                [.la, .la]: "󱤺",
                [.circle, .pona, .circle]: "󱤻",
                [.vert, .vert, .vert]: "󱤼",
                [.vert, .vert, .hor, .hor]: "󱤽",
                [.hor, .hor, .vert, .vert]: "󱤽",
                [.pona, .ike, .pona]: "󱤾",
                [.ike, .pona, .ike]: "󱤾",
                [.vert, .up]: "󱤿",
                [.up, .vert]: "󱤿",
                [.ike, .vert, .vert]: "󱥀",
                [.vert, .vert, .ike]: "󱥀",
                [.vert, .ike, .vert]: "󱥀",
                [.vert, .down]: "󱥁",
                [.vert, .hor, .vert, .hor]: "󱥂",
                [.hor, .vert, .hor, .vert]: "󱥂",
                [.vert, .la, .vert]: "󱥃",
                [.vert, .la, .hor, .vert]: "󱥃",
                [.vert, .dot]: "󱥄",
                [.ike, .ike, .down, .ike, .ike, .down]: "󱥅",
                [.down, .ike, .ike, .down, .ike, .ike]: "󱥅",
                [.hor, .circle]: "󱥆",
                [.poki, .hor]: "󱥇",
                [.hor, .poki]: "󱥇",
                [.box, .down, .up]: "󱥈",
                [.box, .up, .down]: "󱥈",
                [.circle, .luka]: "󱥉",
                [.luka, .circle]: "󱥉",
                [.ike, .vert, .vert, .pona]: "󱥊",
                [.pona, .vert, .vert, .ike]: "󱥊",
                [.ike, .vert, .pona, .vert]: "󱥊",
                [.pona, .vert, .ike, .vert]: "󱥊",
                [.vert, .ike, .vert, .pona]: "󱥊",
                [.vert, .pona, .vert, .ike]: "󱥊",
                [.down, .down, .down]: "󱥋",
                [.luka, .sound]: "󱥌",
                [.sound, .luka]: "󱥌",
                [.vert, .hor]: "󱥍",
                [.ike, .ike, .down]: "󱥎",
                [.down, .ike, .ike]: "󱥎",
                [.ike, .ike, .pona]: "󱥎",
                [.up, .hor, .down, .up]: "󱥏",
                [.down, .up, .up, .hor]: "󱥏",
                [.hor, .vert, .hor]: "󱥐",
                [.dot, .dot, .vert, .hor, .hor, .hor]: "󱥑",
                [.vert, .hor, .hor, .hor, .dot, .dot]: "󱥑",
                [.hor, .hor, .hor, .vert, .dot, .dot]: "󱥑",
                [.poki, .dot]: "󱥒",
                [.poki]: "󱥓",
                [.pona]: "󱥔",
                [.box, .circle, .sound, .pona]: "󱥕",
                [.hor, .hor]: "󱥖",
                [.dot, .sound]: "󱥗",
                [.sound, .dot]: "󱥗",
                [.vert, .hor, .vert, .vert, .vert]: "󱥘",
                [.hor, .vert, .vert, .vert, .vert]: "󱥘",
                [.hor, .hor, .vert, .hor, .hor]: "󱥘",
                [.luka, .dot]: "󱥙",
                [.dot, .luka]: "󱥙",
                [.pona, .pona, .vert]: "󱥚",
                [.vert, .pona, .pona, .vert]: "󱥚",
                [.vert, .hor, .vert, .vert]: "󱥛",
                [.hor, .vert, .vert, .vert]: "󱥛",
                [.circle, .circle]: "󱥜",
                [.sound]: "󱥝",
                [.circle, .vert]: "󱥞",
                [.hor, .vert, .hor, .dot]: "󱥟",
                [.cl_br, .dot]: "󱥟",
                [.box, .dot, .dot, .dot]: "󱥠",
                [.box, .dot, .dot]: "󱥠",
                [.box, .sound]: "󱥡",
                [.sound, .box]: "󱥡",
                [.hor, .la, .dot, .dot, .vert, .vert, .vert, .vert]: "󱥢",
                [.la, .dot, .dot, .vert, .vert]: "󱥢",
                [.la, .vert, .vert, .vert, .vert, .dot, .dot]: "󱥢",
                [.la, .dot, .dot, .vert, .vert, .vert, .vert]: "󱥢",
                [.la, .vert, .vert, .dot, .dot]: "󱥢",
                [.down, .down]: "󱥣",
                [.vert, .down, .vert]: "󱥣",
                [.circle, .box]: "󱥤",
                [.hor, .vert, .vert]: "󱥥",
                [.vert, .vert, .hor]: "󱥥",
                [.up, .dot, .up]: "󱥦",
                [.up, .up, .dot]: "󱥦",
                [.dot, .up, .up]: "󱥦",
                [.down, .ike]: "󱥧",
                [.ike, .down]: "󱥧",
                [.hor, .vert]: "󱥨",
                [.up, .hor, .hor]: "󱥩",
                [.ike, .pona, .ike, .pona]: "󱥪",
                [.pona, .ike, .pona, .ike]: "󱥪",
                [.circle, .vert, .hor]: "󱥫",
                [.circle, .sound]: "󱥬",
                [.up, .poki]: "󱥭",
                [.poki, .up]: "󱥭",
                [.vert, .vert]: "󱥮",
                [.ike, .ike, .down, .circle]: "󱥯",
                [.ike, .ike, .pona, .circle]: "󱥯",
                [.pona, .hor, .dot]: "󱥰",
                [.hor, .pona, .dot]: "󱥰",
                [.down, .up, .down]: "󱥱",
                [.down, .down, .up, .down]: "󱥱",
                [.up, .hor, .down]: "󱥲",
                [.hor, .up, .down]: "󱥲",
                [.vert]: "󱥳",
                [.up, .vert, .dot, .dot]: "󱥴",
                [.dot, .dot, .up, .vert]: "󱥴",
                [.vert, .circle, .vert]: "󱥵",
                [.sound, .vert]: "󱥶",
                [.pona, .pona]: "󱥷",
                
                // nimi ku suli en nimi ku lili en nimi sin
                [.down, .sound]: "󱥸",
                [.sound, .down]: "󱥸",
                [.box, .dot]: "󱥸",
                [.dot, .box]: "󱥸",
                [.vert, .down, .up, .vert]: "󱥹",
                [.vert, .down, .up]: "󱥹",
                [.down, .la, .dot]: "󱥺",
                [.dot, .vert, .dot]: "󱥻",
                [.box, .box]: "󱥼",
                [.up, .up, .up, .up]: "󱥽",
                [.down, .down, .down, .down]: "󱥽",
                [.circle, .hor, .hor, .vert]: "󱥾",
                [.circle, .vert, .hor, .hor]: "󱥾",
                [.circle, .hor, .vert, .hor]: "󱥾",
                [.ike, .pona, .ike, .pona, .vert]: "󱥿",
                [.pona, .ike, .pona, .ike, .vert]: "󱥿",
                [.vert, .pona, .ike, .pona, .ike]: "󱥿",
                [.vert, .ike, .pona, .ike, .pona]: "󱥿",
                [.circle, .vert, .vert, .vert, .ike, .up, .vert, .vert, .vert, .dot, .dot]: "󱦀",
                [.circle, .poki]: "󱦁",
                [.ike, .hor, .poki]: "󱦁",
                [.vert, .dot, .vert]: "󱦂",
                [.dot, .vert, .vert]: "󱦂",
                [.vert, .vert, .up]: "󱦃",
                [.up, .vert, .vert]: "󱦃",
                [.circle, .sound, .hor]: "󱦄",
                [.sound, .circle, .hor]: "󱦄",
                [.ike, .pona, .ike, .dot]: "󱦅",
                [.vert, .ike]: "󱦆",
                [.ike, .vert, .vert, .pona, .hor]: "󱦇",
                [.pona, .vert, .vert, .ike, .hor]: "󱦇",
                [.ike, .vert, .pona, .vert, .hor]: "󱦇",
                [.pona, .vert, .ike, .vert, .hor]: "󱦇",
                [.vert, .ike, .vert, .pona, .hor]: "󱦇",
                [.vert, .pona, .vert, .ike, .hor]: "󱦇",
                [.box, .down, .hor, .dot]: "󱦈",
                [.box, .down, .hor, .circle, .sound, .pona]: "󱦈",
                [.vert, .hor, .hor]: "󱦠",
                [.hor, .hor, .vert]: "󱦠",
                [.circle, .circle, .circle, .up]: "󱦡",
                [.circle, .circle, .up, .circle]: "󱦡",
                [.circle, .up, .circle, .circle]: "󱦡",
                [.up, .circle, .circle, .circle]: "󱦡",
                [.sound, .hor, .hor]: "󱦢",
                [.hor, .sound, .hor]: "󱦢",
                [.vert, .up, .down]: "󱦣",
                [.vert, .hor, .vert, .pona, .ike, .vert, .dot, .dot, .dot]: "󱦤",
                [.vert, .hor, .vert, .dot, .dot, .dot, .pona, .ike, .vert]: "󱦤",
                [.vert, .hor, .vert, .vert, .pona, .ike, .dot, .dot, .dot]: "󱦤",
                [.vert, .hor, .vert, .vert, .dot, .dot, .dot, .pona, .ike]: "󱦤",
                [.circle, .circle, .circle, .up, .hor]: "󱦤",
                [.up, .hor, .circle, .circle, .circle]: "󱦤",
                [.up, .up, .up, .down, .down, .down]: "󱦥",
                [.up, .up, .up, .up, .down, .down, .down, .down]: "󱦥",
                [.up, .hor, .up, .hor]: "󱦥",
                [.hor, .up, .hor, .up]: "󱦥",
                [.box, .down,]: "󱦦",
                [.sound, .circle, .dot]: "󱦮",
                [.vert, .pona, .pona]: "󱧀",
                
    ]

    static let codesForDisplay = code.map { ($0.1, $0.0) }.sorted {
        if $0.0.first!.isPunctuation && !$1.0.first!.isPunctuation {
            return false
        }
        if !$0.0.first!.isPunctuation && $1.0.first!.isPunctuation {
            return true
        }
        return $0.0 < $1.0
    }

    /// Converts an array of signals into the associated letter if it exists
    static func letter(fromSignals signals: [Key]) -> String? {
        return code.filter {
            $0.key == signals
        }.map {
            $0.value
        }.first
    }

    static func sitelenENasin(_ nasin: [wakalitoData.Key], height: CGFloat) -> NSAttributedString {
        let str = NSMutableAttributedString()
        let sinpin = NSTextAttachment()
        sinpin.bounds = CGRect(x: 0, y: 0, width: 0, height: height)
        str.append(NSAttributedString(attachment: sinpin))
        for key in nasin {
            let sitelen = NSTextAttachment()
            let im = key.sitelen()
            sitelen.image = im
            sitelen.bounds = CGRect(x: 0, y: (height - im.size.height) / 2, width: im.size.width, height: im.size.height)
            str.append(NSAttributedString(attachment: sitelen))
            let weka = NSTextAttachment()
            weka.bounds = CGRect(x: 0, y: 0, width: 6, height: 0)
            str.append(NSAttributedString(attachment: weka))
        }
        return str
    }
}
