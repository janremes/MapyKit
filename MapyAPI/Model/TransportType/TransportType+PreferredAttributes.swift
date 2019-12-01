//
//  TransportType+PreferredAttributes.swift
//  MapyAPI
//
//  Created by Josef Dolezal (Admin) on 01/12/2019.
//  Copyright © 2019 Josef Dolezal. All rights reserved.
//

import Foundation

extension TransportType {
    /// Preferred route attributes.
    ///
    /// - fast: Prefers fastest route (measured by ETA)
    /// - short: Prefers short route (measured by total distance)
    public enum PreferredAttributes {
        case fast
        case short
    }
}
