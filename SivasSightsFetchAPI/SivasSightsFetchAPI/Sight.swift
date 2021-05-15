//
//  Sight.swift
//  SivasSightsFetchAPI
//
//  Created by mert.kutluca on 15.05.2021.
//

import Foundation

public struct Sight {
    let title: String
    let imageUrl: String
    let mediaUrl: String
}

extension Sight {
    public static func dummy(number: Int) -> Sight {
        let numberString = String(number)
        return Sight(title: "title" + numberString,
                     imageUrl: "image" + numberString,
                     mediaUrl: "media" + numberString)
    }
}

extension Sight: Equatable {
    public static func ==(lhs: Sight, rhs: Sight) -> Bool {
        return lhs.title == rhs.title && lhs.imageUrl == rhs.imageUrl && lhs.mediaUrl == rhs.mediaUrl
    }
}
