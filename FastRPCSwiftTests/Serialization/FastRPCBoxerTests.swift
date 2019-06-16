//
//  FastRPCBoxerTests.swift
//  FastRPCSwiftTests
//
//  Created by Josef Dolezal on 11/01/2019.
//  Copyright © 2019 Josef Dolezal. All rights reserved.
//

import XCTest
@testable import FastRPCSwift

class FastRPCBoxerTests: XCTestCase {

    func testFaultBox() throws {
        for _ in 0 ..< 20 {
//            let fault = randomFault()
//            let boxer = FastRPCBoxer(container: fault)
//
//            XCTAssertNoThrow(try boxer.box())
        }
    }

    func testProcedureBoxInt() throws {
        let tests: [(value: Int, encoded: [UInt8])] = [
            (500, [57, 244, 1]), (1000, [57, 232, 3]), (1500, [57, 220, 5]), (2000, [57, 208, 7]),
            (2500, [57, 196, 9]), (3000, [57, 184, 11]), (3500, [57, 172, 13]), (4000, [57, 160, 15]),
            (4500, [57, 148, 17]), (5000, [57, 136, 19]), (5500, [57, 124, 21]), (6000, [57, 112, 23]),
            (6500, [57, 100, 25]), (7000, [57, 88, 27]), (7500, [57, 76, 29]), (8000, [57, 64, 31]),
            (8500, [57, 52, 33]), (9000, [57, 40, 35]), (9500, [57, 28, 37]), (10000, [57, 16, 39]),
            (-500, [65, 244, 1]), (-1000, [65, 232, 3]), (-1500, [65, 220, 5]), (-2000, [65, 208, 7]),
            (-2500, [65, 196, 9]), (-3000, [65, 184, 11]), (-3500, [65, 172, 13]), (-4000, [65, 160, 15]),
            (-4500, [65, 148, 17]), (-5000, [65, 136, 19]), (-5500, [65, 124, 21]), (-6000, [65, 112, 23]),
            (-6500, [65, 100, 25]), (-7000, [65, 88, 27]), (-7500, [65, 76, 29]), (-8000, [65, 64, 31]),
            (-8500, [65, 52, 33]), (-9000, [65, 40, 35]), (-9500, [65, 28, 37]), (-10000, [65, 16, 39]),
            (0, [56, 0])
        ]

        for test in tests {
//            let boxer = FastRPCBoxer(container: UntypedProcedure(name: "c", arguments: [test.value]), version: .version2)
//
//            XCTAssertEqual(try [UInt8](boxer.box()), [0xCA, 0x11, 0x02, 0x00, 0x68, 0x01, 0x63] + test.encoded)
        }
    }

    func testProcedureBoxStringAsciiUtf8() throws {
        // Static tests for ascii and utf-8
        let tests: [(value: String, encoded: [UInt8])] = [
            ("ElWEds0SzorqKVX", [32, 15, 69, 108, 87, 69, 100, 115, 48, 83, 122, 111, 114, 113, 75, 86, 88]),
            ("XnYPkzsYkgSegLY", [32, 15, 88, 110, 89, 80, 107, 122, 115, 89, 107, 103, 83, 101, 103, 76, 89]),
            ("ROJuuXbGclXqVfz", [32, 15, 82, 79, 74, 117, 117, 88, 98, 71, 99, 108, 88, 113, 86, 102, 122]),
            ("u3GHIyM3yYFxx1w", [32, 15, 117, 51, 71, 72, 73, 121, 77, 51, 121, 89, 70, 120, 120, 49, 119]),
            ("P1u9kT6E4KhrQ05", [32, 15, 80, 49, 117, 57, 107, 84, 54, 69, 52, 75, 104, 114, 81, 48, 53]),
            ("26y57aOyBUwgGJG", [32, 15, 50, 54, 121, 53, 55, 97, 79, 121, 66, 85, 119, 103, 71, 74, 71]),
            ("QJ24K8gESejp2M8", [32, 15, 81, 74, 50, 52, 75, 56, 103, 69, 83, 101, 106, 112, 50, 77, 56]),
            ("xUiN9zU8EIOH774", [32, 15, 120, 85, 105, 78, 57, 122, 85, 56, 69, 73, 79, 72, 55, 55, 52]),
            ("0OZE0pNBWrcXRiT", [32, 15, 48, 79, 90, 69, 48, 112, 78, 66, 87, 114, 99, 88, 82, 105, 84]),
            ("sFL6Kg8kcFqW2n8", [32, 15, 115, 70, 76, 54, 75, 103, 56, 107, 99, 70, 113, 87, 50, 110, 56]),
            ("cPPEG4HBQdEqCU9", [32, 15, 99, 80, 80, 69, 71, 52, 72, 66, 81, 100, 69, 113, 67, 85, 57]),
            ("sErPGbpXP2jMjg8", [32, 15, 115, 69, 114, 80, 71, 98, 112, 88, 80, 50, 106, 77, 106, 103, 56]),
            ("0k57V9wiRazWxLm", [32, 15, 48, 107, 53, 55, 86, 57, 119, 105, 82, 97, 122, 87, 120, 76, 109]),
            ("1KbWO5UAfwpvHNN", [32, 15, 49, 75, 98, 87, 79, 53, 85, 65, 102, 119, 112, 118, 72, 78, 78]),
            ("gmk3ZCAuBBSMLcy", [32, 15, 103, 109, 107, 51, 90, 67, 65, 117, 66, 66, 83, 77, 76, 99, 121]),
            ("re41Pak8Tx49AQl", [32, 15, 114, 101, 52, 49, 80, 97, 107, 56, 84, 120, 52, 57, 65, 81, 108]),
            ("2t7ixlVcAkVWxgh", [32, 15, 50, 116, 55, 105, 120, 108, 86, 99, 65, 107, 86, 87, 120, 103, 104]),
            ("vuTkUr4WYGeTy8t", [32, 15, 118, 117, 84, 107, 85, 114, 52, 87, 89, 71, 101, 84, 121, 56, 116]),
            ("RYvfbv4TD4T8muV", [32, 15, 82, 89, 118, 102, 98, 118, 52, 84, 68, 52, 84, 56, 109, 117, 86]),
            ("hRlYfAaupusTCcn", [32, 15, 104, 82, 108, 89, 102, 65, 97, 117, 112, 117, 115, 84, 67, 99, 110]),
            ("šü%úÁ$Ů[úďďüňßó", [32, 27, 197, 161, 195, 188, 37, 195, 186, 195, 129, 36, 197, 174, 91, 195, 186, 196, 143, 196, 143, 195, 188, 197, 136, 195, 159, 195, 179]),
            ("üčúÝ%čě$ÍŚú%žáß", [32, 27, 195, 188, 196, 141, 195, 186, 195, 157, 37, 196, 141, 196, 155, 36, 195, 141, 197, 154, 195, 186, 37, 197, 190, 195, 161, 195, 159]),
            ("Öů'%ČěŮÉŚŚ@}úůÜ", [32, 26, 195, 150, 197, 175, 39, 37, 196, 140, 196, 155, 197, 174, 195, 137, 197, 154, 197, 154, 64, 125, 195, 186, 197, 175, 195, 156]),
            ("áŮ@ŽČÚŠÓü}Řß`Ř~", [32, 26, 195, 161, 197, 174, 64, 197, 189, 196, 140, 195, 154, 197, 160, 195, 147, 195, 188, 125, 197, 152, 195, 159, 96, 197, 152, 126]),
            ("áťŮÜöŘßř[}í'šŘŮ", [32, 27, 195, 161, 197, 165, 197, 174, 195, 156, 195, 182, 197, 152, 195, 159, 197, 153, 91, 125, 195, 173, 39, 197, 161, 197, 152, 197, 174]),
            ("Ü`[@[ÚŽ~~ŚňÚĎěÓ", [32, 24, 195, 156, 96, 91, 64, 91, 195, 154, 197, 189, 126, 126, 197, 154, 197, 136, 195, 154, 196, 142, 196, 155, 195, 147]),
            ("ť}ßřýÖÜŮÁüňářéÁ", [32, 29, 197, 165, 125, 195, 159, 197, 153, 195, 189, 195, 150, 195, 156, 197, 174, 195, 129, 195, 188, 197, 136, 195, 161, 197, 153, 195, 169, 195, 129]),
            ("ĎčžÜ$ŇěšśšÖřŘčŽ", [32, 29, 196, 142, 196, 141, 197, 190, 195, 156, 36, 197, 135, 196, 155, 197, 161, 197, 155, 197, 161, 195, 150, 197, 153, 197, 152, 196, 141, 197, 189]),
            ("áÍŠňüÍß~á{ÖÓóšš", [32, 28, 195, 161, 195, 141, 197, 160, 197, 136, 195, 188, 195, 141, 195, 159, 126, 195, 161, 123, 195, 150, 195, 147, 195, 179, 197, 161, 197, 161]),
            ("Ň']ěň~ŤÚ{'ď{áÚ'", [32, 23, 197, 135, 39, 93, 196, 155, 197, 136, 126, 197, 164, 195, 154, 123, 39, 196, 143, 123, 195, 161, 195, 154, 39]),
            ("Áěč`í'ýÓů'~Á~éó", [32, 25, 195, 129, 196, 155, 196, 141, 96, 195, 173, 39, 195, 189, 195, 147, 197, 175, 39, 126, 195, 129, 126, 195, 169, 195, 179]),
            ("]Ěü\\$}\\Čě]öíÓÍů", [32, 24, 93, 196, 154, 195, 188, 92, 36, 125, 92, 196, 140, 196, 155, 93, 195, 182, 195, 173, 195, 147, 195, 141, 197, 175]),
            ("ÚéýŠß[íŤśśŇÚ'řÝ", [32, 28, 195, 154, 195, 169, 195, 189, 197, 160, 195, 159, 91, 195, 173, 197, 164, 197, 155, 197, 155, 197, 135, 195, 154, 39, 197, 153, 195, 157]),
            ("Ý$ŘáíéťžŠÍíÁ@ÉĎ", [32, 28, 195, 157, 36, 197, 152, 195, 161, 195, 173, 195, 169, 197, 165, 197, 190, 197, 160, 195, 141, 195, 173, 195, 129, 64, 195, 137, 196, 142]),
            ("śÁ][ťĚČÁÜŽěíö@\'\\", [32, 27, 197, 155, 195, 129, 93, 91, 197, 165, 196, 154, 196, 140, 195, 129, 195, 156, 197, 189, 196, 155, 195, 173, 195, 182, 64, 39, 92]),
            ("ŘÁĎŘ{čďĎ`ĎďČ$@ś", [32, 26, 197, 152, 195, 129, 196, 142, 197, 152, 123, 196, 141, 196, 143, 196, 142, 96, 196, 142, 196, 143, 196, 140, 36, 64, 197, 155]),
            ("áŇüÁÜčůÍŮáś{'šß", [32, 28, 195, 161, 197, 135, 195, 188, 195, 129, 195, 156, 196, 141, 197, 175, 195, 141, 197, 174, 195, 161, 197, 155, 123, 39, 197, 161, 195, 159]),
            ("ó~Áíň'ÜŤĎ{śč@öě", [32, 26, 195, 179, 126, 195, 129, 195, 173, 197, 136, 39, 195, 156, 197, 164, 196, 142, 123, 197, 155, 196, 141, 64, 195, 182, 196, 155]),
            ("~śř]ň%čÝéŘŮśÍŽÜ", [32, 27, 126, 197, 155, 197, 153, 93, 197, 136, 37, 196, 141, 195, 157, 195, 169, 197, 152, 197, 174, 197, 155, 195, 141, 197, 189, 195, 156]),
            ("ÚÖ[\\ů~ýÉůŤťüĚňď", [32, 27, 195, 154, 195, 150, 91, 92, 197, 175, 126, 195, 189, 195, 137, 197, 175, 197, 164, 197, 165, 195, 188, 196, 154, 197, 136, 196, 143])
        ]

        for test in tests {
//            try assertEqualUsingProcedure(test.value, encoded: test.encoded)
        }
    }

    func testProcedureBoxRandomString() throws {
        for _ in 0...100 {
//            let string = String.random(maxLength: Int.random(in: 0...300))
//            let boxer = FastRPCBoxer(container: staticProcedure(argument: string), version: .version2)
//            let stringData = string.data(using: .utf8)!
//            var subject = try boxer.box().dropFirst(7)
//
//            // Get information of how many bytes are used by string length
//            let bytesLength = Int(subject.removeFirst() & 0x07) + 1
//            // Get string length
//            let length = subject.prefix(bytesLength)
//                .enumerated()
//                .map { offset, byte in
//                    Int(byte) << (8 * (bytesLength - 1 - offset))
//                }
//                .reduce(0, +)
//
//            // Remove the string length data
//            subject.removeFirst(bytesLength)
//
//            // Test serialized info about string length bytes count
//            XCTAssertEqual(bytesLength, stringData.count.bigEndianData.count)
//            // Test string length
//            XCTAssertEqual(length, stringData.count)
//            // Test raw bytes itself
//            XCTAssertEqual(subject, stringData)
        }
    }

    func testProcedureBoxDouble() throws {
        let tests: [(value: Double, encoded: [UInt8])] = [
            (50.06451651464292, [24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0x40]),
            (14.436357511288634, [24, 0x80, 0xB2, 0x70, 0x40, 0x6A, 0xDF, 0x2C, 0x40]),
            (50.072890502005, [24, 0x77, 0x26, 0xD9, 0x79, 0x54, 0x09, 0x49, 0x40]),
            (14.324434293515196, [24, 0x80, 0xB2, 0x70, 0x40, 0x1C, 0xA6, 0x2C, 0x40]),
            (49.99222743840002, [24, 0x9C, 0x0F, 0x07, 0x4F, 0x01, 0xFF, 0x48, 0x40]),
            (14.467256559140196, [24, 0x80, 0xB2, 0x70, 0x40, 0x3C, 0xEF, 0x2C, 0x40]),
            (50.12919384639952, [24, 0xB0, 0x90, 0x88, 0x6C, 0x89, 0x10, 0x49, 0x40]),
            (14.328346133765535, [24, 0x00, 0x95, 0x04, 0xFC, 0x1C, 0xA8, 0x2C, 0x40]),
            (50.10208363663026, [24, 0x51, 0x64, 0x9C, 0x13, 0x11, 0x0D, 0x49, 0x40]),
            (14.26300048828125, [24, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x86, 0x2C, 0x40]),
            (-50.06451651464292, [24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0xC0]),
            (-14.436357511288634, [24, 0x80, 0xB2, 0x70, 0x40, 0x6A, 0xDF, 0x2C, 0xC0]),
            (-50.072890502005, [24, 0x77, 0x26, 0xD9, 0x79, 0x54, 0x09, 0x49, 0xC0]),
            (-14.324434293515196, [24, 0x80, 0xB2, 0x70, 0x40, 0x1C, 0xA6, 0x2C, 0xC0]),
            (-49.99222743840002, [24, 0x9C, 0x0F, 0x07, 0x4F, 0x01, 0xFF, 0x48, 0xC0]),
            (-14.467256559140196, [24, 0x80, 0xB2, 0x70, 0x40, 0x3C, 0xEF, 0x2C, 0xC0]),
            (-50.12919384639952, [24, 0xB0, 0x90, 0x88, 0x6C, 0x89, 0x10, 0x49, 0xC0]),
            (-14.328346133765535, [24, 0x00, 0x95, 0x04, 0xFC, 0x1C, 0xA8, 0x2C, 0xC0]),
            (-50.10208363663026, [24, 0x51, 0x64, 0x9C, 0x13, 0x11, 0x0D, 0x49, 0xC0]),
            (-14.26300048828125, [24, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x86, 0x2C, 0xC0])
        ]

        for test in tests {
//            try assertEqualUsingProcedure(test.value, encoded: test.encoded)
        }
    }

    func testProcedureBoxBool() throws {
        let tests: [(value: Bool, encoded: [UInt8])] = [(true, [17]), (false, [16])]

        for test in tests {
//            try assertEqualUsingProcedure(test.value, encoded: test.encoded)
        }
    }

    func testProcedureBoxOptionalNil() throws {
//        try assertEqualUsingProcedure(NSNull(), encoded: [0x60])
    }

    func testProcedureBoxDate() throws {
        let tests: [(value: Date, encoded: [UInt8])] = [
            (Date(timeIntervalSince1970: 1537391055), [40, 248, 207, 185, 162, 91, 123, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391056), [40, 248, 208, 185, 162, 91, 131, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391057), [40, 248, 209, 185, 162, 91, 139, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391058), [40, 248, 210, 185, 162, 91, 147, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391059), [40, 248, 211, 185, 162, 91, 155, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391060), [40, 248, 212, 185, 162, 91, 163, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391061), [40, 248, 213, 185, 162, 91, 171, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391062), [40, 248, 214, 185, 162, 91, 179, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391063), [40, 248, 215, 185, 162, 91, 187, 136, 59, 83, 52]),
            (Date(timeIntervalSince1970: 1537391064), [40, 248, 216, 185, 162, 91, 195, 136, 59, 83, 52])
        ]

        for test in tests {
            // Because of problems with timezone encoding on different environments, do not check the timezone data
//            try assertEqualUsingProcedure(test.value, encoded: test.encoded, truncate: 2)
        }
    }

    func testProcedureBoxData() throws {
        for _ in 0..<10 {
            let bytes = (0..<Int.random(in: 1...15)).map { _ in UInt8.random(in: 0...255) }
            let identifier = UInt8(FastRPCObejectType.binary.identifier + bytes.count.nonTrailingBytesCount - 1)
            let data = Data(bytes: bytes)

//            try assertEqualUsingProcedure(data, encoded: [identifier, UInt8(bytes.count)] + bytes)
        }
    }

    func testResponseBox() throws {
//        XCTAssertEqual(try [UInt8](FastRPCBoxer(container: UntypedResponse(value: 50.06451651464292), version: .version2).box().dropFirst(5)), [24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0x40])
    }

    #warning("Add tests for multiple procedure arguments here")
    
    /// Asserts encoded value using static procedure wrapper
//    private func assertEqualUsingProcedure<T>(_ value: T, encoded: [UInt8], truncate: Int = 0) throws {
//        let boxer = FastRPCBoxer(container: UntypedProcedure(name: "c", arguments: [value]), version: .version2)
//
//        XCTAssertEqual(try [UInt8](boxer.box().dropFirst(7).dropFirst(truncate)), [UInt8](encoded.dropFirst(truncate)))
//    }

    /// Procedure with staticly encoded meta (used for wrape top level encoded primitives)
//    private func staticProcedure(argument: Any) -> UntypedProcedure {
//        return UntypedProcedure(name: "c", arguments: [argument])
//    }

    private func randomFault() -> Fault {
        let code = Int.random(in: 0 ... .max)
        let message = String.random(maxLength: 20)

        return Fault(code: code, message: message)
    }
}
