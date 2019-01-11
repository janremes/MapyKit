//
//  FastRPCEncoder+StringTests.swift
//  FastRPCSwiftTests
//
//  Created by Josef Dolezal on 13/10/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import XCTest
@testable import FastRPCSwift

class FastRPCEncoder_StringTests: XCTestCase {
    let encoder = FastRPCEncoder()

    func testSerializeASCIIStrings() {
//        XCTAssertEqual(try [UInt8](encoder.encode("ElWEds0SzorqKVX")), [32, 15, 69, 108, 87, 69, 100, 115, 48, 83, 122, 111, 114, 113, 75, 86, 88])
//        XCTAssertEqual(try [UInt8](encoder.encode("XnYPkzsYkgSegLY")), [32, 15, 88, 110, 89, 80, 107, 122, 115, 89, 107, 103, 83, 101, 103, 76, 89])
//        XCTAssertEqual(try [UInt8](encoder.encode("ROJuuXbGclXqVfz")), [32, 15, 82, 79, 74, 117, 117, 88, 98, 71, 99, 108, 88, 113, 86, 102, 122])
//        XCTAssertEqual(try [UInt8](encoder.encode("u3GHIyM3yYFxx1w")), [32, 15, 117, 51, 71, 72, 73, 121, 77, 51, 121, 89, 70, 120, 120, 49, 119])
//        XCTAssertEqual(try [UInt8](encoder.encode("P1u9kT6E4KhrQ05")), [32, 15, 80, 49, 117, 57, 107, 84, 54, 69, 52, 75, 104, 114, 81, 48, 53])
//        XCTAssertEqual(try [UInt8](encoder.encode("26y57aOyBUwgGJG")), [32, 15, 50, 54, 121, 53, 55, 97, 79, 121, 66, 85, 119, 103, 71, 74, 71])
//        XCTAssertEqual(try [UInt8](encoder.encode("QJ24K8gESejp2M8")), [32, 15, 81, 74, 50, 52, 75, 56, 103, 69, 83, 101, 106, 112, 50, 77, 56])
//        XCTAssertEqual(try [UInt8](encoder.encode("xUiN9zU8EIOH774")), [32, 15, 120, 85, 105, 78, 57, 122, 85, 56, 69, 73, 79, 72, 55, 55, 52])
//        XCTAssertEqual(try [UInt8](encoder.encode("0OZE0pNBWrcXRiT")), [32, 15, 48, 79, 90, 69, 48, 112, 78, 66, 87, 114, 99, 88, 82, 105, 84])
//        XCTAssertEqual(try [UInt8](encoder.encode("sFL6Kg8kcFqW2n8")), [32, 15, 115, 70, 76, 54, 75, 103, 56, 107, 99, 70, 113, 87, 50, 110, 56])
//        XCTAssertEqual(try [UInt8](encoder.encode("cPPEG4HBQdEqCU9")), [32, 15, 99, 80, 80, 69, 71, 52, 72, 66, 81, 100, 69, 113, 67, 85, 57])
//        XCTAssertEqual(try [UInt8](encoder.encode("sErPGbpXP2jMjg8")), [32, 15, 115, 69, 114, 80, 71, 98, 112, 88, 80, 50, 106, 77, 106, 103, 56])
//        XCTAssertEqual(try [UInt8](encoder.encode("0k57V9wiRazWxLm")), [32, 15, 48, 107, 53, 55, 86, 57, 119, 105, 82, 97, 122, 87, 120, 76, 109])
//        XCTAssertEqual(try [UInt8](encoder.encode("1KbWO5UAfwpvHNN")), [32, 15, 49, 75, 98, 87, 79, 53, 85, 65, 102, 119, 112, 118, 72, 78, 78])
//        XCTAssertEqual(try [UInt8](encoder.encode("gmk3ZCAuBBSMLcy")), [32, 15, 103, 109, 107, 51, 90, 67, 65, 117, 66, 66, 83, 77, 76, 99, 121])
//        XCTAssertEqual(try [UInt8](encoder.encode("re41Pak8Tx49AQl")), [32, 15, 114, 101, 52, 49, 80, 97, 107, 56, 84, 120, 52, 57, 65, 81, 108])
//        XCTAssertEqual(try [UInt8](encoder.encode("2t7ixlVcAkVWxgh")), [32, 15, 50, 116, 55, 105, 120, 108, 86, 99, 65, 107, 86, 87, 120, 103, 104])
//        XCTAssertEqual(try [UInt8](encoder.encode("vuTkUr4WYGeTy8t")), [32, 15, 118, 117, 84, 107, 85, 114, 52, 87, 89, 71, 101, 84, 121, 56, 116])
//        XCTAssertEqual(try [UInt8](encoder.encode("RYvfbv4TD4T8muV")), [32, 15, 82, 89, 118, 102, 98, 118, 52, 84, 68, 52, 84, 56, 109, 117, 86])
//        XCTAssertEqual(try [UInt8](encoder.encode("hRlYfAaupusTCcn")), [32, 15, 104, 82, 108, 89, 102, 65, 97, 117, 112, 117, 115, 84, 67, 99, 110])
    }

    func testSerializeUTF8Strings() {
//        XCTAssertEqual(try [UInt8](encoder.encode("šü%úÁ$Ů[úďďüňßó")), [32, 27, 197, 161, 195, 188, 37, 195, 186, 195, 129, 36, 197, 174, 91, 195, 186, 196, 143, 196, 143, 195, 188, 197, 136, 195, 159, 195, 179])
//        XCTAssertEqual(try [UInt8](encoder.encode("üčúÝ%čě$ÍŚú%žáß")), [32, 27, 195, 188, 196, 141, 195, 186, 195, 157, 37, 196, 141, 196, 155, 36, 195, 141, 197, 154, 195, 186, 37, 197, 190, 195, 161, 195, 159])
//        XCTAssertEqual(try [UInt8](encoder.encode("Öů'%ČěŮÉŚŚ@}úůÜ")), [32, 26, 195, 150, 197, 175, 39, 37, 196, 140, 196, 155, 197, 174, 195, 137, 197, 154, 197, 154, 64, 125, 195, 186, 197, 175, 195, 156])
//        XCTAssertEqual(try [UInt8](encoder.encode("áŮ@ŽČÚŠÓü}Řß`Ř~")), [32, 26, 195, 161, 197, 174, 64, 197, 189, 196, 140, 195, 154, 197, 160, 195, 147, 195, 188, 125, 197, 152, 195, 159, 96, 197, 152, 126])
//        XCTAssertEqual(try [UInt8](encoder.encode("áťŮÜöŘßř[}í'šŘŮ")), [32, 27, 195, 161, 197, 165, 197, 174, 195, 156, 195, 182, 197, 152, 195, 159, 197, 153, 91, 125, 195, 173, 39, 197, 161, 197, 152, 197, 174])
//        XCTAssertEqual(try [UInt8](encoder.encode("Ü`[@[ÚŽ~~ŚňÚĎěÓ")), [32, 24, 195, 156, 96, 91, 64, 91, 195, 154, 197, 189, 126, 126, 197, 154, 197, 136, 195, 154, 196, 142, 196, 155, 195, 147])
//        XCTAssertEqual(try [UInt8](encoder.encode("ť}ßřýÖÜŮÁüňářéÁ")), [32, 29, 197, 165, 125, 195, 159, 197, 153, 195, 189, 195, 150, 195, 156, 197, 174, 195, 129, 195, 188, 197, 136, 195, 161, 197, 153, 195, 169, 195, 129])
//        XCTAssertEqual(try [UInt8](encoder.encode("ĎčžÜ$ŇěšśšÖřŘčŽ")), [32, 29, 196, 142, 196, 141, 197, 190, 195, 156, 36, 197, 135, 196, 155, 197, 161, 197, 155, 197, 161, 195, 150, 197, 153, 197, 152, 196, 141, 197, 189])
//        XCTAssertEqual(try [UInt8](encoder.encode("áÍŠňüÍß~á{ÖÓóšš")), [32, 28, 195, 161, 195, 141, 197, 160, 197, 136, 195, 188, 195, 141, 195, 159, 126, 195, 161, 123, 195, 150, 195, 147, 195, 179, 197, 161, 197, 161])
//        XCTAssertEqual(try [UInt8](encoder.encode("Ň']ěň~ŤÚ{'ď{áÚ'")), [32, 23, 197, 135, 39, 93, 196, 155, 197, 136, 126, 197, 164, 195, 154, 123, 39, 196, 143, 123, 195, 161, 195, 154, 39])
//        XCTAssertEqual(try [UInt8](encoder.encode("Áěč`í'ýÓů'~Á~éó")), [32, 25, 195, 129, 196, 155, 196, 141, 96, 195, 173, 39, 195, 189, 195, 147, 197, 175, 39, 126, 195, 129, 126, 195, 169, 195, 179])
//        XCTAssertEqual(try [UInt8](encoder.encode("]Ěü\\$}\\Čě]öíÓÍů")), [32, 24, 93, 196, 154, 195, 188, 92, 36, 125, 92, 196, 140, 196, 155, 93, 195, 182, 195, 173, 195, 147, 195, 141, 197, 175])
//        XCTAssertEqual(try [UInt8](encoder.encode("ÚéýŠß[íŤśśŇÚ'řÝ")), [32, 28, 195, 154, 195, 169, 195, 189, 197, 160, 195, 159, 91, 195, 173, 197, 164, 197, 155, 197, 155, 197, 135, 195, 154, 39, 197, 153, 195, 157])
//        XCTAssertEqual(try [UInt8](encoder.encode("Ý$ŘáíéťžŠÍíÁ@ÉĎ")), [32, 28, 195, 157, 36, 197, 152, 195, 161, 195, 173, 195, 169, 197, 165, 197, 190, 197, 160, 195, 141, 195, 173, 195, 129, 64, 195, 137, 196, 142])
//        XCTAssertEqual(try [UInt8](encoder.encode("śÁ][ťĚČÁÜŽěíö@\'\\")), [32, 27, 197, 155, 195, 129, 93, 91, 197, 165, 196, 154, 196, 140, 195, 129, 195, 156, 197, 189, 196, 155, 195, 173, 195, 182, 64, 39, 92])
//        XCTAssertEqual(try [UInt8](encoder.encode("ŘÁĎŘ{čďĎ`ĎďČ$@ś")), [32, 26, 197, 152, 195, 129, 196, 142, 197, 152, 123, 196, 141, 196, 143, 196, 142, 96, 196, 142, 196, 143, 196, 140, 36, 64, 197, 155])
//        XCTAssertEqual(try [UInt8](encoder.encode("áŇüÁÜčůÍŮáś{'šß")), [32, 28, 195, 161, 197, 135, 195, 188, 195, 129, 195, 156, 196, 141, 197, 175, 195, 141, 197, 174, 195, 161, 197, 155, 123, 39, 197, 161, 195, 159])
//        XCTAssertEqual(try [UInt8](encoder.encode("ó~Áíň'ÜŤĎ{śč@öě")), [32, 26, 195, 179, 126, 195, 129, 195, 173, 197, 136, 39, 195, 156, 197, 164, 196, 142, 123, 197, 155, 196, 141, 64, 195, 182, 196, 155])
//        XCTAssertEqual(try [UInt8](encoder.encode("~śř]ň%čÝéŘŮśÍŽÜ")), [32, 27, 126, 197, 155, 197, 153, 93, 197, 136, 37, 196, 141, 195, 157, 195, 169, 197, 152, 197, 174, 197, 155, 195, 141, 197, 189, 195, 156])
//        XCTAssertEqual(try [UInt8](encoder.encode("ÚÖ[\\ů~ýÉůŤťüĚňď")), [32, 27, 195, 154, 195, 150, 91, 92, 197, 175, 126, 195, 189, 195, 137, 197, 175, 197, 164, 197, 165, 195, 188, 196, 154, 197, 136, 196, 143])
    }

    func testSerializeRandomStrings() throws {
        for _ in 0...100 {
//            let string = String.random(maxLength: Int.random(in: 0...300))
//            let stringData = string.data(using: .utf8)!
//            var subject = try encoder.encode(string)
//
//            // Get information of how many bytes are used by string length
//            let bytesLength = Int(subject.removeFirst() & 0x07) + 1
//            // Get string length
//            let length = subject.prefix(bytesLength)
//                .enumerated()
//                .map { offset, byte in
//                    Int(byte) << (8 * offset)
//                }
//                .reduce(0, +)
//
//            // Remove the string length data
//            subject.removeFirst(bytesLength)
//
//            // Test serialized info about string length bytes count
//            XCTAssertEqual(bytesLength, stringData.count.usedBytes.count)
//            // Test string length
//            XCTAssertEqual(length, stringData.count)
//            // Test raw bytes itself
//            XCTAssertEqual(subject, stringData)
        }
    }
}
