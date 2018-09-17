//
//  Bool+FastRPCSerializable.swift
//  MapyAPI
//
//  Created by Josef Dolezal on 16/09/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import Foundation

extension Bool: FastRPCSerializable {
    func serialize() throws -> Data {
        let identifier = FastRPCObejectType.bool.identifier

        // Increase identifier if current value is `true`
        let data = self
            ? identifier + 1
            : identifier

        // Serialize identifier
        return Data(data)
    }
}