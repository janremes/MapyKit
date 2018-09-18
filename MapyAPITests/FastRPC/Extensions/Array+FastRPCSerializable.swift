//
//  Array+FastRPCSerializable.swift
//  MapyAPITests
//
//  Created by Josef Dolezal on 18/09/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import XCTest
@testable import MapyAPI

class Array_FastRPCSerializable: XCTestCase {

    func testSerializeCollectionOfInts() {
        XCTAssertEqual(try [UInt8]([Int]().serialize()), [88, 0])
        XCTAssertEqual(try [UInt8]([6874, 4320, 1990, 7980, 9221, 5189, 3599].serialize()), [88, 7, 57, 218, 26, 57, 224, 16, 57, 198, 7, 57, 44, 31, 57, 5, 36, 57, 69, 20, 57, 15, 14])
        XCTAssertEqual(try [UInt8]([9817, 1946, 2691, 5063, 8619, 9597, 2246].serialize()), [88, 7, 57, 89, 38, 57, 154, 7, 57, 131, 10, 57, 199, 19, 57, 171, 33, 57, 125, 37, 57, 198, 8])
        XCTAssertEqual(try [UInt8]([3331].serialize()), [88, 1, 57, 3, 13])
        XCTAssertEqual(try [UInt8]([370, 4399, 4635, 4747, 8109, 9011, 8616, 2583, 6801, 3030].serialize()), [88, 10, 57, 114, 1, 57, 47, 17, 57, 27, 18, 57, 139, 18, 57, 173, 31, 57, 51, 35, 57, 168, 33, 57, 23, 10, 57, 145, 26, 57, 214, 11])
        XCTAssertEqual(try [UInt8]([1683, 7446, 5923, 4321, 9780, 4009, 9871, 6786, 2931].serialize()), [88, 9, 57, 147, 6, 57, 22, 29, 57, 35, 23, 57, 225, 16, 57, 52, 38, 57, 169, 15, 57, 143, 38, 57, 130, 26, 57, 115, 11])
        XCTAssertEqual(try [UInt8]([1898, 8798, 5812, 8284, 4208].serialize()), [88, 5, 57, 106, 7, 57, 94, 34, 57, 180, 22, 57, 92, 32, 57, 112, 16])
        XCTAssertEqual(try [UInt8]([4225, 245, 3702, 7605, 279, 2469, 3432].serialize()), [88, 7, 57, 129, 16, 56, 245, 57, 118, 14, 57, 181, 29, 57, 23, 1, 57, 165, 9, 57, 104, 13])
        XCTAssertEqual(try [UInt8]([4824].serialize()), [88, 1, 57, 216, 18])
        XCTAssertEqual(try [UInt8]([4739, 4979, 9448, 823].serialize()), [88, 4, 57, 131, 18, 57, 115, 19, 57, 232, 36, 57, 55, 3])
    }

    func testSerializeCollectionOfASCIIStrings() {
        XCTAssertEqual(try [UInt8](["U77eJC6wDixyZRr", "HUl5jQgzIQEWBZ7", "ND2XkaTLEy7TTO2", "2Pz41ti4PNvdz2s", "G082Fi9NeUMoC7w", "P4kD5btEsVnn92s", "r2iuvd1h7zTCi3x", "VNS6crdu2TxDjZY", "JRLyL6qtcyJfzzJ", "lqYYhtrUu40n9aB"].serialize()), [88, 10, 32, 15, 85, 55, 55, 101, 74, 67, 54, 119, 68, 105, 120, 121, 90, 82, 114, 32, 15, 72, 85, 108, 53, 106, 81, 103, 122, 73, 81, 69, 87, 66, 90, 55, 32, 15, 78, 68, 50, 88, 107, 97, 84, 76, 69, 121, 55, 84, 84, 79, 50, 32, 15, 50, 80, 122, 52, 49, 116, 105, 52, 80, 78, 118, 100, 122, 50, 115, 32, 15, 71, 48, 56, 50, 70, 105, 57, 78, 101, 85, 77, 111, 67, 55, 119, 32, 15, 80, 52, 107, 68, 53, 98, 116, 69, 115, 86, 110, 110, 57, 50, 115, 32, 15, 114, 50, 105, 117, 118, 100, 49, 104, 55, 122, 84, 67, 105, 51, 120, 32, 15, 86, 78, 83, 54, 99, 114, 100, 117, 50, 84, 120, 68, 106, 90, 89, 32, 15, 74, 82, 76, 121, 76, 54, 113, 116, 99, 121, 74, 102, 122, 122, 74, 32, 15, 108, 113, 89, 89, 104, 116, 114, 85, 117, 52, 48, 110, 57, 97, 66])
        XCTAssertEqual(try [UInt8](["UEUfGtFMuzAFOMT", "fE3JZiwvnNJuPWE", "9B6gC7ULXi3rVCW"].serialize()), [88, 3, 32, 15, 85, 69, 85, 102, 71, 116, 70, 77, 117, 122, 65, 70, 79, 77, 84, 32, 15, 102, 69, 51, 74, 90, 105, 119, 118, 110, 78, 74, 117, 80, 87, 69, 32, 15, 57, 66, 54, 103, 67, 55, 85, 76, 88, 105, 51, 114, 86, 67, 87])
        XCTAssertEqual(try [UInt8](["AzvkQ6jBYEOUS0i", "VpXivxGkHxF1iB9", "OoimHJi3t1RmpRl", "TBLxiUtK0yLXmvm", "P6p0zsZVidF4liA", "3VQeMfEmxbtl9Li", "aouecqpe6MEnN8L", "u8BljdEyq9DjwCb", "Z5xsM5MM7kpCBdf"].serialize()), [88, 9, 32, 15, 65, 122, 118, 107, 81, 54, 106, 66, 89, 69, 79, 85, 83, 48, 105, 32, 15, 86, 112, 88, 105, 118, 120, 71, 107, 72, 120, 70, 49, 105, 66, 57, 32, 15, 79, 111, 105, 109, 72, 74, 105, 51, 116, 49, 82, 109, 112, 82, 108, 32, 15, 84, 66, 76, 120, 105, 85, 116, 75, 48, 121, 76, 88, 109, 118, 109, 32, 15, 80, 54, 112, 48, 122, 115, 90, 86, 105, 100, 70, 52, 108, 105, 65, 32, 15, 51, 86, 81, 101, 77, 102, 69, 109, 120, 98, 116, 108, 57, 76, 105, 32, 15, 97, 111, 117, 101, 99, 113, 112, 101, 54, 77, 69, 110, 78, 56, 76, 32, 15, 117, 56, 66, 108, 106, 100, 69, 121, 113, 57, 68, 106, 119, 67, 98, 32, 15, 90, 53, 120, 115, 77, 53, 77, 77, 55, 107, 112, 67, 66, 100, 102])
        XCTAssertEqual(try [UInt8](["iASyp3Dbrecd0xQ", "1ElZf1gnaIPf2Wk", "YLbMPGj77f7p4ao", "eNkHdHDKvGqFXYg", "bdNrkAVu8UiQDV5", "wnDpFoupx7dE9D3", "bV3MJjfrgc76A7g", "tG9zbIkd32NptpM"].serialize()), [88, 8, 32, 15, 105, 65, 83, 121, 112, 51, 68, 98, 114, 101, 99, 100, 48, 120, 81, 32, 15, 49, 69, 108, 90, 102, 49, 103, 110, 97, 73, 80, 102, 50, 87, 107, 32, 15, 89, 76, 98, 77, 80, 71, 106, 55, 55, 102, 55, 112, 52, 97, 111, 32, 15, 101, 78, 107, 72, 100, 72, 68, 75, 118, 71, 113, 70, 88, 89, 103, 32, 15, 98, 100, 78, 114, 107, 65, 86, 117, 56, 85, 105, 81, 68, 86, 53, 32, 15, 119, 110, 68, 112, 70, 111, 117, 112, 120, 55, 100, 69, 57, 68, 51, 32, 15, 98, 86, 51, 77, 74, 106, 102, 114, 103, 99, 55, 54, 65, 55, 103, 32, 15, 116, 71, 57, 122, 98, 73, 107, 100, 51, 50, 78, 112, 116, 112, 77])
        XCTAssertEqual(try [UInt8](["nQeGfF6cMpgr4wW"].serialize()), [88, 1, 32, 15, 110, 81, 101, 71, 102, 70, 54, 99, 77, 112, 103, 114, 52, 119, 87])
        XCTAssertEqual(try [UInt8](["d088l4FOQREStTx", "scOrNPaZa1CP1FS", "M3Wl5JjJGp8atcC", "W0Ab0nLWgQzeE3F", "RnM2onllM5UiCrq", "wDvmL381sEFfWN7", "OZ29rLRTJVd97IV", "JGnA3hi3ymL8MnH", "S0rq4Hgv0457dqO"].serialize()), [88, 9, 32, 15, 100, 48, 56, 56, 108, 52, 70, 79, 81, 82, 69, 83, 116, 84, 120, 32, 15, 115, 99, 79, 114, 78, 80, 97, 90, 97, 49, 67, 80, 49, 70, 83, 32, 15, 77, 51, 87, 108, 53, 74, 106, 74, 71, 112, 56, 97, 116, 99, 67, 32, 15, 87, 48, 65, 98, 48, 110, 76, 87, 103, 81, 122, 101, 69, 51, 70, 32, 15, 82, 110, 77, 50, 111, 110, 108, 108, 77, 53, 85, 105, 67, 114, 113, 32, 15, 119, 68, 118, 109, 76, 51, 56, 49, 115, 69, 70, 102, 87, 78, 55, 32, 15, 79, 90, 50, 57, 114, 76, 82, 84, 74, 86, 100, 57, 55, 73, 86, 32, 15, 74, 71, 110, 65, 51, 104, 105, 51, 121, 109, 76, 56, 77, 110, 72, 32, 15, 83, 48, 114, 113, 52, 72, 103, 118, 48, 52, 53, 55, 100, 113, 79])
        XCTAssertEqual(try [UInt8]([String]().serialize()), [88, 0])
        XCTAssertEqual(try [UInt8](["LpqBmtqqCu85O4T", "i1Ne9agnnkxlKM9", "KZsVcvyi02xY27A"].serialize()), [88, 3, 32, 15, 76, 112, 113, 66, 109, 116, 113, 113, 67, 117, 56, 53, 79, 52, 84, 32, 15, 105, 49, 78, 101, 57, 97, 103, 110, 110, 107, 120, 108, 75, 77, 57, 32, 15, 75, 90, 115, 86, 99, 118, 121, 105, 48, 50, 120, 89, 50, 55, 65])
        XCTAssertEqual(try [UInt8](["Lj1YJJAfUmpTiTz"].serialize()), [88, 1, 32, 15, 76, 106, 49, 89, 74, 74, 65, 102, 85, 109, 112, 84, 105, 84, 122])
        XCTAssertEqual(try [UInt8](["prllguBRlxIdzv5", "ZJcsAkwwrJXUtkT", "jdnzsOMlzwXL3GQ", "6oR3wSVGXEoLmcE", "WThpK3gLxLY2lSD"].serialize()), [88, 5, 32, 15, 112, 114, 108, 108, 103, 117, 66, 82, 108, 120, 73, 100, 122, 118, 53, 32, 15, 90, 74, 99, 115, 65, 107, 119, 119, 114, 74, 88, 85, 116, 107, 84, 32, 15, 106, 100, 110, 122, 115, 79, 77, 108, 122, 119, 88, 76, 51, 71, 81, 32, 15, 54, 111, 82, 51, 119, 83, 86, 71, 88, 69, 111, 76, 109, 99, 69, 32, 15, 87, 84, 104, 112, 75, 51, 103, 76, 120, 76, 89, 50, 108, 83, 68])
    }

    func testSerializeCollectionOfUTF8Strings() {
        XCTAssertEqual(try [UInt8](["řÝěáŘČěřŇČýšřßě"].serialize()), [88, 1, 32, 30, 197, 153, 195, 157, 196, 155, 195, 161, 197, 152, 196, 140, 196, 155, 197, 153, 197, 135, 196, 140, 195, 189, 197, 161, 197, 153, 195, 159, 196, 155])
        XCTAssertEqual(try [UInt8](["řýŘďÁýůÚÍáŇďŇóč", "řĎŮÍÖßĚřŤÚúšÚďÓ", "úřŇČďěčŽŘšúíŽÍÍ", "ŇÓčÉĚŤŠÁŘůöÍíÝě", "ÓÝÁÖíóžĎóřÖßřžŠ", "ŤöíŽířýÝČöýěÓßÓ", "ŮÚŠŮářňřÁžÝěĚŇÍ", "čďÝŘÖČČžŠďÓČřŘů"].serialize()), [88, 8, 32, 30, 197, 153, 195, 189, 197, 152, 196, 143, 195, 129, 195, 189, 197, 175, 195, 154, 195, 141, 195, 161, 197, 135, 196, 143, 197, 135, 195, 179, 196, 141, 32, 30, 197, 153, 196, 142, 197, 174, 195, 141, 195, 150, 195, 159, 196, 154, 197, 153, 197, 164, 195, 154, 195, 186, 197, 161, 195, 154, 196, 143, 195, 147, 32, 30, 195, 186, 197, 153, 197, 135, 196, 140, 196, 143, 196, 155, 196, 141, 197, 189, 197, 152, 197, 161, 195, 186, 195, 173, 197, 189, 195, 141, 195, 141, 32, 30, 197, 135, 195, 147, 196, 141, 195, 137, 196, 154, 197, 164, 197, 160, 195, 129, 197, 152, 197, 175, 195, 182, 195, 141, 195, 173, 195, 157, 196, 155, 32, 30, 195, 147, 195, 157, 195, 129, 195, 150, 195, 173, 195, 179, 197, 190, 196, 142, 195, 179, 197, 153, 195, 150, 195, 159, 197, 153, 197, 190, 197, 160, 32, 30, 197, 164, 195, 182, 195, 173, 197, 189, 195, 173, 197, 153, 195, 189, 195, 157, 196, 140, 195, 182, 195, 189, 196, 155, 195, 147, 195, 159, 195, 147, 32, 30, 197, 174, 195, 154, 197, 160, 197, 174, 195, 161, 197, 153, 197, 136, 197, 153, 195, 129, 197, 190, 195, 157, 196, 155, 196, 154, 197, 135, 195, 141, 32, 30, 196, 141, 196, 143, 195, 157, 197, 152, 195, 150, 196, 140, 196, 140, 197, 190, 197, 160, 196, 143, 195, 147, 196, 140, 197, 153, 197, 152, 197, 175])
        XCTAssertEqual(try [UInt8](["ňŽÚÚŤČŮÝŤÉčďÖěÚ", "ůůééŇŠáéĚČŮýňěá", "řÍóŮďřúöÚáÓřÚÓŤ", "řÖáŠöŤáďŠÁůÖúřĎ"].serialize()), [88, 4, 32, 30, 197, 136, 197, 189, 195, 154, 195, 154, 197, 164, 196, 140, 197, 174, 195, 157, 197, 164, 195, 137, 196, 141, 196, 143, 195, 150, 196, 155, 195, 154, 32, 30, 197, 175, 197, 175, 195, 169, 195, 169, 197, 135, 197, 160, 195, 161, 195, 169, 196, 154, 196, 140, 197, 174, 195, 189, 197, 136, 196, 155, 195, 161, 32, 30, 197, 153, 195, 141, 195, 179, 197, 174, 196, 143, 197, 153, 195, 186, 195, 182, 195, 154, 195, 161, 195, 147, 197, 153, 195, 154, 195, 147, 197, 164, 32, 30, 197, 153, 195, 150, 195, 161, 197, 160, 195, 182, 197, 164, 195, 161, 196, 143, 197, 160, 195, 129, 197, 175, 195, 150, 195, 186, 197, 153, 196, 142])
        XCTAssertEqual(try [UInt8](["řŠččĎžÉŇďůááýčŘ", "ŮéČÁŘěŇýáÓŮÚĚÁŠ", "ďöřóÖÝÍŽŤÉöřýžň", "řŘŘÚúŇĎřŇÉóéňŮŮ", "ÁřßÖÝöžňÁŘŤŠŮóě", "ĚřŮíéŽŘŮěŤřÉÝěŇ", "ŘůčřýÓúéÖÁŽÉóŽÓ", "ÓŘěÖčÍříďßÝúÉÁó", "úŇůěóŇřÍřřĎĚÉĚÁ"].serialize()), [88, 9, 32, 30, 197, 153, 197, 160, 196, 141, 196, 141, 196, 142, 197, 190, 195, 137, 197, 135, 196, 143, 197, 175, 195, 161, 195, 161, 195, 189, 196, 141, 197, 152, 32, 30, 197, 174, 195, 169, 196, 140, 195, 129, 197, 152, 196, 155, 197, 135, 195, 189, 195, 161, 195, 147, 197, 174, 195, 154, 196, 154, 195, 129, 197, 160, 32, 30, 196, 143, 195, 182, 197, 153, 195, 179, 195, 150, 195, 157, 195, 141, 197, 189, 197, 164, 195, 137, 195, 182, 197, 153, 195, 189, 197, 190, 197, 136, 32, 30, 197, 153, 197, 152, 197, 152, 195, 154, 195, 186, 197, 135, 196, 142, 197, 153, 197, 135, 195, 137, 195, 179, 195, 169, 197, 136, 197, 174, 197, 174, 32, 30, 195, 129, 197, 153, 195, 159, 195, 150, 195, 157, 195, 182, 197, 190, 197, 136, 195, 129, 197, 152, 197, 164, 197, 160, 197, 174, 195, 179, 196, 155, 32, 30, 196, 154, 197, 153, 197, 174, 195, 173, 195, 169, 197, 189, 197, 152, 197, 174, 196, 155, 197, 164, 197, 153, 195, 137, 195, 157, 196, 155, 197, 135, 32, 30, 197, 152, 197, 175, 196, 141, 197, 153, 195, 189, 195, 147, 195, 186, 195, 169, 195, 150, 195, 129, 197, 189, 195, 137, 195, 179, 197, 189, 195, 147, 32, 30, 195, 147, 197, 152, 196, 155, 195, 150, 196, 141, 195, 141, 197, 153, 195, 173, 196, 143, 195, 159, 195, 157, 195, 186, 195, 137, 195, 129, 195, 179, 32, 30, 195, 186, 197, 135, 197, 175, 196, 155, 195, 179, 197, 135, 197, 153, 195, 141, 197, 153, 197, 153, 196, 142, 196, 154, 195, 137, 196, 154, 195, 129])
        XCTAssertEqual(try [UInt8](["ŮáĎĎĚéČÖřýŤŽŠĎŘ", "ĚŠřÁĚöŘČŽéÝÖŇíÁ", "áÖňřŤěúŽČěŘéŽĚŇ", "ďßČďÍŮčßŽŘÓóčßď", "ÁúŇčÁěŠŇůřĎÓšÉř", "šÍřčÝßÁýÓěŇßÓéÖ", "ĚÚžíŠČňďĚňĚÝžďŤ"].serialize()), [88, 7, 32, 30, 197, 174, 195, 161, 196, 142, 196, 142, 196, 154, 195, 169, 196, 140, 195, 150, 197, 153, 195, 189, 197, 164, 197, 189, 197, 160, 196, 142, 197, 152, 32, 30, 196, 154, 197, 160, 197, 153, 195, 129, 196, 154, 195, 182, 197, 152, 196, 140, 197, 189, 195, 169, 195, 157, 195, 150, 197, 135, 195, 173, 195, 129, 32, 30, 195, 161, 195, 150, 197, 136, 197, 153, 197, 164, 196, 155, 195, 186, 197, 189, 196, 140, 196, 155, 197, 152, 195, 169, 197, 189, 196, 154, 197, 135, 32, 30, 196, 143, 195, 159, 196, 140, 196, 143, 195, 141, 197, 174, 196, 141, 195, 159, 197, 189, 197, 152, 195, 147, 195, 179, 196, 141, 195, 159, 196, 143, 32, 30, 195, 129, 195, 186, 197, 135, 196, 141, 195, 129, 196, 155, 197, 160, 197, 135, 197, 175, 197, 153, 196, 142, 195, 147, 197, 161, 195, 137, 197, 153, 32, 30, 197, 161, 195, 141, 197, 153, 196, 141, 195, 157, 195, 159, 195, 129, 195, 189, 195, 147, 196, 155, 197, 135, 195, 159, 195, 147, 195, 169, 195, 150, 32, 30, 196, 154, 195, 154, 197, 190, 195, 173, 197, 160, 196, 140, 197, 136, 196, 143, 196, 154, 197, 136, 196, 154, 195, 157, 197, 190, 196, 143, 197, 164])
        XCTAssertEqual(try [UInt8](["žáŇČÚČÁĎÉÚáĎÚÝř"].serialize()), [88, 1, 32, 30, 197, 190, 195, 161, 197, 135, 196, 140, 195, 154, 196, 140, 195, 129, 196, 142, 195, 137, 195, 154, 195, 161, 196, 142, 195, 154, 195, 157, 197, 153])
        XCTAssertEqual(try [UInt8]([String]().serialize()), [88, 0])
        XCTAssertEqual(try [UInt8](["ÉóĎéŽŮÉöřšßŮňóá", "ŇŮÖňŘÓßŮÚĎßýčŤě", "ČúÝěéíůÁěŮŤžčŇÖ", "ŮóýÉÓŘŠůÝŤŮÓžřó", "šÝĎéŘÓÍČóößĎŇěĚ", "ČÍŇůĚňřččÖßŇďžž", "ÁňĚŇßÓóÁýůŮöÉŠĚ"].serialize()), [88, 7, 32, 30, 195, 137, 195, 179, 196, 142, 195, 169, 197, 189, 197, 174, 195, 137, 195, 182, 197, 153, 197, 161, 195, 159, 197, 174, 197, 136, 195, 179, 195, 161, 32, 30, 197, 135, 197, 174, 195, 150, 197, 136, 197, 152, 195, 147, 195, 159, 197, 174, 195, 154, 196, 142, 195, 159, 195, 189, 196, 141, 197, 164, 196, 155, 32, 30, 196, 140, 195, 186, 195, 157, 196, 155, 195, 169, 195, 173, 197, 175, 195, 129, 196, 155, 197, 174, 197, 164, 197, 190, 196, 141, 197, 135, 195, 150, 32, 30, 197, 174, 195, 179, 195, 189, 195, 137, 195, 147, 197, 152, 197, 160, 197, 175, 195, 157, 197, 164, 197, 174, 195, 147, 197, 190, 197, 153, 195, 179, 32, 30, 197, 161, 195, 157, 196, 142, 195, 169, 197, 152, 195, 147, 195, 141, 196, 140, 195, 179, 195, 182, 195, 159, 196, 142, 197, 135, 196, 155, 196, 154, 32, 30, 196, 140, 195, 141, 197, 135, 197, 175, 196, 154, 197, 136, 197, 153, 196, 141, 196, 141, 195, 150, 195, 159, 197, 135, 196, 143, 197, 190, 197, 190, 32, 30, 195, 129, 197, 136, 196, 154, 197, 135, 195, 159, 195, 147, 195, 179, 195, 129, 195, 189, 197, 175, 197, 174, 195, 182, 195, 137, 197, 160, 196, 154])
        XCTAssertEqual(try [UInt8](["ěÍúčÚďůčÁúŘŘÖŽě", "ßřČčŤĚöÝŠŮýčšďě", "ŠŮěĚŮßňöýóŮéÝŤß", "ÉňýĎŤßĎÍšéÖŘÉĚö", "ššúßŠöěďŠýůÖöŽé", "řčČĎďŮĚňÓÁÓŠřÉÁ", "ďÁÖŘšěŇšÓůÓÖýÓŽ", "ßöŠÚßŤíďÓöďáíěď", "šéňóčúěžŤÍŤěÚřŇ"].serialize()), [88, 9, 32, 30, 196, 155, 195, 141, 195, 186, 196, 141, 195, 154, 196, 143, 197, 175, 196, 141, 195, 129, 195, 186, 197, 152, 197, 152, 195, 150, 197, 189, 196, 155, 32, 30, 195, 159, 197, 153, 196, 140, 196, 141, 197, 164, 196, 154, 195, 182, 195, 157, 197, 160, 197, 174, 195, 189, 196, 141, 197, 161, 196, 143, 196, 155, 32, 30, 197, 160, 197, 174, 196, 155, 196, 154, 197, 174, 195, 159, 197, 136, 195, 182, 195, 189, 195, 179, 197, 174, 195, 169, 195, 157, 197, 164, 195, 159, 32, 30, 195, 137, 197, 136, 195, 189, 196, 142, 197, 164, 195, 159, 196, 142, 195, 141, 197, 161, 195, 169, 195, 150, 197, 152, 195, 137, 196, 154, 195, 182, 32, 30, 197, 161, 197, 161, 195, 186, 195, 159, 197, 160, 195, 182, 196, 155, 196, 143, 197, 160, 195, 189, 197, 175, 195, 150, 195, 182, 197, 189, 195, 169, 32, 30, 197, 153, 196, 141, 196, 140, 196, 142, 196, 143, 197, 174, 196, 154, 197, 136, 195, 147, 195, 129, 195, 147, 197, 160, 197, 153, 195, 137, 195, 129, 32, 30, 196, 143, 195, 129, 195, 150, 197, 152, 197, 161, 196, 155, 197, 135, 197, 161, 195, 147, 197, 175, 195, 147, 195, 150, 195, 189, 195, 147, 197, 189, 32, 30, 195, 159, 195, 182, 197, 160, 195, 154, 195, 159, 197, 164, 195, 173, 196, 143, 195, 147, 195, 182, 196, 143, 195, 161, 195, 173, 196, 155, 196, 143, 32, 30, 197, 161, 195, 169, 197, 136, 195, 179, 196, 141, 195, 186, 196, 155, 197, 190, 197, 164, 195, 141, 197, 164, 196, 155, 195, 154, 197, 153, 197, 135])
        XCTAssertEqual(try [UInt8](["ÁěÝŤŤĚŠĚěůöóĚĎĚ", "ŘůŠŮáÝŽŮřßŮéĎŽŽ", "ŇŘžÍýďŇÖřýářňóĚ", "ÉÖřĚöÝöÓňýúÝŘŇč", "ßÁÉýŘúÍěÍÉňíŤŽĚ", "ÝěůÁÖÓÁĚŤřřďŘÓÝ"].serialize()), [88, 6, 32, 30, 195, 129, 196, 155, 195, 157, 197, 164, 197, 164, 196, 154, 197, 160, 196, 154, 196, 155, 197, 175, 195, 182, 195, 179, 196, 154, 196, 142, 196, 154, 32, 30, 197, 152, 197, 175, 197, 160, 197, 174, 195, 161, 195, 157, 197, 189, 197, 174, 197, 153, 195, 159, 197, 174, 195, 169, 196, 142, 197, 189, 197, 189, 32, 30, 197, 135, 197, 152, 197, 190, 195, 141, 195, 189, 196, 143, 197, 135, 195, 150, 197, 153, 195, 189, 195, 161, 197, 153, 197, 136, 195, 179, 196, 154, 32, 30, 195, 137, 195, 150, 197, 153, 196, 154, 195, 182, 195, 157, 195, 182, 195, 147, 197, 136, 195, 189, 195, 186, 195, 157, 197, 152, 197, 135, 196, 141, 32, 30, 195, 159, 195, 129, 195, 137, 195, 189, 197, 152, 195, 186, 195, 141, 196, 155, 195, 141, 195, 137, 197, 136, 195, 173, 197, 164, 197, 189, 196, 154, 32, 30, 195, 157, 196, 155, 197, 175, 195, 129, 195, 150, 195, 147, 195, 129, 196, 154, 197, 164, 197, 153, 197, 153, 196, 143, 197, 152, 195, 147, 195, 157])
    }

    func testSerializeCollectionOfBools() {
        XCTAssertEqual(try [UInt8]([true, false, false, true, false, true].serialize()), [88, 6, 17, 16, 16, 17, 16, 17])
        XCTAssertEqual(try [UInt8]([true, true, true].serialize()), [88, 3, 17, 17, 17])
        XCTAssertEqual(try [UInt8]([false, true].serialize()), [88, 2, 16, 17])
        XCTAssertEqual(try [UInt8]([false].serialize()), [88, 1, 16])
        XCTAssertEqual(try [UInt8]([false, false, false].serialize()), [88, 3, 16, 16, 16])
        XCTAssertEqual(try [UInt8]([true, true, true].serialize()), [88, 3, 17, 17, 17])
        XCTAssertEqual(try [UInt8]([true].serialize()), [88, 1, 17])
        XCTAssertEqual(try [UInt8]([false, false, true, false, true, false, false].serialize()), [88, 7, 16, 16, 17, 16, 17, 16, 16])
        XCTAssertEqual(try [UInt8]([false, true, false, true, false, false, false].serialize()), [88, 7, 16, 17, 16, 17, 16, 16, 16])
        XCTAssertEqual(try [UInt8]([true, false, false].serialize()), [88, 3, 17, 16, 16])
    }

    func testSerializeCollectionOfDoubles() {
        XCTAssertEqual([UInt8](try [Double]().serialize()), [88, 0])
        XCTAssertEqual([UInt8](try [50.06451651464292, 14.436357511288634].serialize()), [88, 2, 24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0x40, 24, 0x80, 0xB2, 0x70, 0x40, 0x6A, 0xDF, 0x2C, 0x40])
        XCTAssertEqual([UInt8](try [50.072890502005, 14.324434293515196].serialize()), [88, 2, 24, 0x77, 0x26, 0xD9, 0x79, 0x54, 0x09, 0x49, 0x40, 24, 0x80, 0xB2, 0x70, 0x40, 0x1C, 0xA6, 0x2C, 0x40])
        XCTAssertEqual([UInt8](try [49.99222743840002, 14.467256559140196].serialize()), [88, 2, 24, 0x9C, 0x0F, 0x07, 0x4F, 0x01, 0xFF, 0x48, 0x40, 24, 0x80, 0xB2, 0x70, 0x40, 0x3C, 0xEF, 0x2C, 0x40])
        XCTAssertEqual([UInt8](try [50.12919384639952, 14.328346133765535].serialize()), [88, 2, 24, 0xB0, 0x90, 0x88, 0x6C, 0x89, 0x10, 0x49, 0x40, 24, 0x00, 0x95, 0x04, 0xFC, 0x1C, 0xA8, 0x2C, 0x40])
        XCTAssertEqual([UInt8](try [50.10208363663026, 14.26300048828125].serialize()), [88, 2, 24, 0x51, 0x64, 0x9C, 0x13, 0x11, 0x0D, 0x49, 0x40, 24, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x86, 0x2C, 0x40])
        XCTAssertEqual([UInt8](try [-50.06451651464292, -14.436357511288634].serialize()), [88, 2, 24, 0xBC, 0x38, 0xC0, 0x13, 0x42, 0x08, 0x49, 0xC0, 24, 0x80, 0xB2, 0x70, 0x40, 0x6A, 0xDF, 0x2C, 0xC0])
        XCTAssertEqual([UInt8](try [-50.072890502005, -14.324434293515196].serialize()), [88, 2, 24, 0x77, 0x26, 0xD9, 0x79, 0x54, 0x09, 0x49, 0xC0, 24, 0x80, 0xB2, 0x70, 0x40, 0x1C, 0xA6, 0x2C, 0xC0])
        XCTAssertEqual([UInt8](try [-49.99222743840002, -14.467256559140196].serialize()), [88, 2, 24, 0x9C, 0x0F, 0x07, 0x4F, 0x01, 0xFF, 0x48, 0xC0, 24, 0x80, 0xB2, 0x70, 0x40, 0x3C, 0xEF, 0x2C, 0xC0])
        XCTAssertEqual([UInt8](try [-50.12919384639952, -14.328346133765535].serialize()), [88, 2, 24, 0xB0, 0x90, 0x88, 0x6C, 0x89, 0x10, 0x49, 0xC0, 24, 0x00, 0x95, 0x04, 0xFC, 0x1C, 0xA8, 0x2C, 0xC0])
        XCTAssertEqual([UInt8](try [-50.10208363663026, -14.26300048828125].serialize()), [88, 2, 24, 0x51, 0x64, 0x9C, 0x13, 0x11, 0x0D, 0x49, 0xC0, 24, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x86, 0x2C, 0xC0])
    }
}
