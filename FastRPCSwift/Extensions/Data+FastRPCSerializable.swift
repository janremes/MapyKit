//
//  Data+FastRPCSerializable.swift
//  FastRPCSwift
//
//  Created by Josef Dolezal on 21/09/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import Foundation

extension Data: FastRPCSerializable {
    public func serialize() throws -> SerializationBuffer {
        // Create data buffer
        var data = Data()
        // Create identifier based on binary length
        let identifier = FastRPCObejectType.binary.identifier + count.nonTrailingBytesCount - 1

        // Serialize identifier and raw data
        data.append(identifier.usedBytes)
        data.append(count.usedBytes)
        data.append(self)

        return SerializationBuffer(data: data)
    }
}

internal extension Data {
    static func + (_ lhs: Data, _ rhs: Data) -> Data {
        var result = lhs

        result.append(rhs)

        return result
    }
}
