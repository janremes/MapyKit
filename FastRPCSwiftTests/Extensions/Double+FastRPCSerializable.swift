//
//  Double+FastRPCSerializable.swift
//  MapyAPITests
//
//  Created by Josef Dolezal on 17/09/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import XCTest
@testable import FastRPCSwift

class Double_FastRPCSerializable: XCTestCase {
    private let decoder = FastRPCDecoder()

    func testSerializePositiveNumbers() {
        XCTAssertEqual([UInt8](try (50.06451651464292).serialize().data), [24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0x40])
        XCTAssertEqual([UInt8](try (14.436357511288634).serialize().data), [24, 0x80, 0xB2, 0x70, 0x40, 0x6A, 0xDF, 0x2C, 0x40])

        XCTAssertEqual([UInt8](try (50.072890502005).serialize().data), [24, 0x77, 0x26, 0xD9, 0x79, 0x54, 0x09, 0x49, 0x40])
        XCTAssertEqual([UInt8](try (14.324434293515196).serialize().data), [24, 0x80, 0xB2, 0x70, 0x40, 0x1C, 0xA6, 0x2C, 0x40])

        XCTAssertEqual([UInt8](try (49.99222743840002).serialize().data), [24, 0x9C, 0x0F, 0x07, 0x4F, 0x01, 0xFF, 0x48, 0x40])
        XCTAssertEqual([UInt8](try (14.467256559140196).serialize().data), [24, 0x80, 0xB2, 0x70, 0x40, 0x3C, 0xEF, 0x2C, 0x40])

        XCTAssertEqual([UInt8](try (50.12919384639952).serialize().data), [24, 0xB0, 0x90, 0x88, 0x6C, 0x89, 0x10, 0x49, 0x40])
        XCTAssertEqual([UInt8](try (14.328346133765535).serialize().data), [24, 0x00, 0x95, 0x04, 0xFC, 0x1C, 0xA8, 0x2C, 0x40])

        XCTAssertEqual([UInt8](try (50.10208363663026).serialize().data), [24, 0x51, 0x64, 0x9C, 0x13, 0x11, 0x0D, 0x49, 0x40])
        XCTAssertEqual([UInt8](try (14.26300048828125).serialize().data), [24, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x86, 0x2C, 0x40])
    }

    func testSerializeNegativeNumbers() {
        XCTAssertEqual([UInt8](try (-50.06451651464292).serialize().data), [24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0xC0])
        XCTAssertEqual([UInt8](try (-14.436357511288634).serialize().data), [24, 0x80, 0xB2, 0x70, 0x40, 0x6A, 0xDF, 0x2C, 0xC0])

        XCTAssertEqual([UInt8](try (-50.072890502005).serialize().data), [24, 0x77, 0x26, 0xD9, 0x79, 0x54, 0x09, 0x49, 0xC0])
        XCTAssertEqual([UInt8](try (-14.324434293515196).serialize().data), [24, 0x80, 0xB2, 0x70, 0x40, 0x1C, 0xA6, 0x2C, 0xC0])

        XCTAssertEqual([UInt8](try (-49.99222743840002).serialize().data), [24, 0x9C, 0x0F, 0x07, 0x4F, 0x01, 0xFF, 0x48, 0xC0])
        XCTAssertEqual([UInt8](try (-14.467256559140196).serialize().data), [24, 0x80, 0xB2, 0x70, 0x40, 0x3C, 0xEF, 0x2C, 0xC0])

        XCTAssertEqual([UInt8](try (-50.12919384639952).serialize().data), [24, 0xB0, 0x90, 0x88, 0x6C, 0x89, 0x10, 0x49, 0xC0])
        XCTAssertEqual([UInt8](try (-14.328346133765535).serialize().data), [24, 0x00, 0x95, 0x04, 0xFC, 0x1C, 0xA8, 0x2C, 0xC0])

        XCTAssertEqual([UInt8](try (-50.10208363663026).serialize().data), [24, 0x51, 0x64, 0x9C, 0x13, 0x11, 0x0D, 0x49, 0xC0])
        XCTAssertEqual([UInt8](try (-14.26300048828125).serialize().data), [24, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x86, 0x2C, 0xC0])
    }

    func testSerializeSpecialCases() {
        XCTAssertEqual([UInt8](try (0.0).serialize().data), [24, 0, 0, 0, 0, 0, 0, 0, 0])
    }

    func testDecodesPositiveNumbers() throws {
        for _ in 0 ... 100 {
            let subject = Double.random(in: 0 ... 10_000)
            let data = try subject.serialize().data

            try XCTAssertEqual(decoder.decode(Double.self, from: data), subject)
        }
    }

    func testDecodesNegativeNumbers() throws {
        for _ in 0 ... 100 {
            let subject = Double.random(in: -10_000 ..< 0)
            let data = try subject.serialize().data

            try XCTAssertEqual(decoder.decode(Double.self, from: data), subject)
        }
    }

    func testDecodesSpecialCases() {
        try XCTAssertEqual(decoder.decode(Double.self, from: (0.0).serialize().data), 0.0)
    }
}
