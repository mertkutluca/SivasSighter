//
//  URL.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import Foundation

extension URL {
    init?(string: String?) {
        guard let str = string, let url = URL(string: str) else {
            return nil
        }
        self = url
    }
}
