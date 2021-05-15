//
//  Sight.swift
//  SivasSightsFetchAPI
//
//  Created by mert.kutluca on 15.05.2021.
//

import Foundation

public struct Sight {
    public let title: String
    public let imageUrl: String?
    public let mediaUrl: String?
}

extension Sight {
    public static func dummy(number: Int) -> Sight {
        let numberString = String(number)
        return Sight(title: "title" + numberString,
                     imageUrl: "image" + numberString,
                     mediaUrl: "media" + numberString)
    }
    
    public static func example() -> Sight {
        return Sight(title: "Kent Meydanı Şehir Kamerası",
                     imageUrl: "https://www.sivas.bel.tr/AjaxResize.ashx?file=Files/spotlar/kentmeydani.jpg&width=190",
                     mediaUrl: nil)
    }
}

extension Sight: Equatable {
    public static func ==(lhs: Sight, rhs: Sight) -> Bool {
        return lhs.title == rhs.title && lhs.imageUrl == rhs.imageUrl && lhs.mediaUrl == rhs.mediaUrl
    }
}
