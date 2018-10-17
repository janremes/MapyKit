//
//  Location+GeoHash.swift
//  MapyAPI
//
//  Created by Josef Dolezal on 13/10/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import Foundation

extension Location {
    // MARK: Public API

    func coordinatesGeoHash() -> String {
        // Prepare coordinates for serialization
        let x = Int((latitude + 180) * Double(1 << 28) / 360)
        let y = Int((longitude + 90) * Double(1 << 28) / 180)

        // Serialize each coordiante separately, merge the result
        return Location.serialize(coords: x) + Location.serialize(coords: y)
    }

    // MARK: Private API

    /// Serialization alphabet for converting number into string
    private static let alphabet = "0ABCD2EFGH4IJKLMN6OPQRST8UVWXYZ-1abcd3efgh5ijklmn7opqrst9uvwxyz."

    /// Serializes given coordinate into ASCII string. Given integer number is serialized using
    /// some kind of geohashing algorithm.
    ///
    /// - Parameter coords: Coordinates to be serilized
    /// - Returns: Serialized coordinates
    private static func serialize(coords: Int) -> String {
        var code = ""

        if coords >= -1024 && coords < 1024 {
            code.append(Location.alphabet[coords + 1024 >> 6])
            code.append(Location.alphabet[coords + 1024 & 63])
        } else if coords >= -32768 && coords < 32768 {
            let value = 131072 | 1024 + 32768
            code.append(Location.alphabet[value >> 12 & 63])
            code.append(Location.alphabet[value >> 6 & 63])
            code.append(Location.alphabet[value & 63])
        } else {
            let value = 805306368 | coords & 268435455
            code.append(Location.alphabet[value >> 24 & 63])
            code.append(Location.alphabet[value >> 18 & 63])
            code.append(Location.alphabet[value >> 12 & 63])
            code.append(Location.alphabet[value >> 6 & 63])
            code.append(Location.alphabet[value & 63])
        }

        return code
    }
}

fileprivate extension String {
    /// Gets character at given index from string. Partial function, throws on
    /// out-of-range indexes.
    ///
    /// - Parameter index: Index of character to be returned
    subscript(_ index: Int) -> Character {
        return self[self.index(startIndex, offsetBy: index)]
    }
}