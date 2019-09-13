//
//  CodablePlusTests.swift
//  CodablePlus
//
//  Created by Pavel Sharanda on 9/27/18.
//  Copyright © 2018 CodablePlus. All rights reserved.
//

import Foundation
import XCTest
import CodablePlus
#if os(iOS)
import UIKit
#endif


class CodablePlusTests: XCTestCase {
    
    enum TestStringEnum: String, Codable {
        case first
        case second
        case third
    }
    
    enum TestIntEnum: Int, Codable {
        case first = 1
        case second = 2
        case third = 3
    }
    
    
    struct TestChild: Codable {
        let name: String
    }
    
    struct TestParent: Codable {
        let normalInt: Int
        let optionalInt: Int?
        let normalFloat: Float
        let optionalFloat: Float?
        let normalCGFloat: CGFloat
        let optionalCGFloat: CGFloat?
        let normalDouble: Double
        let optionalDouble: Double?
        let normalBool: Bool
        let optionalBool: Bool?
        let normalDate: Date
        let optionalDate: Date?
        let normalUrl: URL
        let optionalUrl: URL?
        let normalStringEnum: TestStringEnum
        let optionalStringEnum: TestStringEnum?
        let normalIntEnum: TestIntEnum
        let optionalIntEnum: TestIntEnum?

        let normalChild: TestChild
        let optionalChild: TestChild?

        let normalChildArray: [TestChild]
        let normalOptionalChildArray: [TestChild?]
        let optionalChildArray: [TestChild]?
        let optionalOptionalChildArray: [TestChild?]?
        let normalChildDictionary: [String: TestChild]
        let normalOptionalChildDictionary: [String: TestChild?]
        let optionalChildDictionary: [String: TestChild]?
        let optionalOptionalChildDictionary: [String: TestChild?]?

        let normalIntArray: [Int]
        let normalOptionalIntArray: [Int?]
        let optionalIntArray: [Int]?
        let optionalOptionalIntArray: [Int?]?
        let normalIntDictionary: [String: Int]
        let normalOptionalIntDictionary: [String: Int?]
        let optionalIntDictionary: [String: Int]?
        let optionalOptionalIntDictionary: [String: Int?]?
        
        enum CodingKeys: String, CodingKey
        {
            case normalInt
            case optionalInt
            case normalFloat
            case optionalFloat
            case normalCGFloat
            case optionalCGFloat
            case normalDouble
            case optionalDouble
            case normalBool
            case optionalBool
            case normalDate
            case optionalDate
            case normalUrl
            case optionalUrl
            case normalStringEnum
            case optionalStringEnum
            case normalIntEnum
            case optionalIntEnum

            case normalChild
            case optionalChild

            case normalChildArray
            case normalOptionalChildArray
            case optionalChildArray
            case optionalOptionalChildArray
            case normalChildDictionary
            case normalOptionalChildDictionary
            case optionalChildDictionary
            case optionalOptionalChildDictionary

            case normalIntArray
            case normalOptionalIntArray
            case optionalIntArray
            case optionalOptionalIntArray
            case normalIntDictionary
            case normalOptionalIntDictionary
            case optionalIntDictionary
            case optionalOptionalIntDictionary
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            normalInt = try container.decode(key: .normalInt)
            optionalInt = try container.decode(key: .optionalInt)
            normalFloat = try container.decode(key: .normalFloat)
            optionalFloat = try container.decode(key: .optionalFloat)
            normalCGFloat = try container.decode(key: .normalCGFloat)
            optionalCGFloat = try container.decode(key: .optionalCGFloat)
            normalDouble = try container.decode(key: .normalDouble)
            optionalDouble = try container.decode(key: .optionalDouble)
            normalBool = try container.decode(key: .normalBool)
            optionalBool = try container.decode(key: .optionalBool)
            normalDate = try container.decode(key: .normalDate)
            optionalDate = try container.decode(key: .optionalDate)
            normalUrl = try container.decode(key: .normalUrl)
            optionalUrl = try container.decode(key: .optionalUrl)
            normalStringEnum = try container.decode(key: .normalStringEnum)
            optionalStringEnum = try container.decode(key: .optionalStringEnum)
            normalIntEnum = try container.decode(key: .normalIntEnum)
            optionalIntEnum = try container.decode(key: .optionalIntEnum)
            normalChild = try container.decode(key: .normalChild)
            optionalChild = try container.decode(key: .optionalChild)

            normalChildArray = try container.decode(key: .normalChildArray)
            normalOptionalChildArray = try container.decode(key: .normalOptionalChildArray)
            optionalChildArray = try container.decode(key: .optionalChildArray)
            optionalOptionalChildArray = try container.decode(key: .optionalOptionalChildArray)
            normalChildDictionary = try container.decode(key: .normalChildDictionary)
            normalOptionalChildDictionary = try container.decode(key: .normalOptionalChildDictionary)
            optionalChildDictionary = try container.decode(key: .optionalChildDictionary)
            optionalOptionalChildDictionary = try container.decode(key: .optionalOptionalChildDictionary)

            normalIntArray = try container.decode(key: .normalIntArray)
            normalOptionalIntArray = try container.decode(key: .normalOptionalIntArray)
            optionalIntArray = try container.decode(key: .optionalIntArray)
            optionalOptionalIntArray = try container.decode(key: .optionalOptionalIntArray)
            normalIntDictionary = try container.decode(key: .normalIntDictionary)
            normalOptionalIntDictionary = try container.decode(key: .normalOptionalIntDictionary)
            optionalIntDictionary = try container.decode(key: .optionalIntDictionary)
            optionalOptionalIntDictionary = try container.decode(key: .optionalOptionalIntDictionary)
        }
        
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(normalInt, forKey: .normalInt)
            try container.encode(optionalInt, forKey: .optionalInt)
            try container.encode(normalFloat, forKey: .normalFloat)
            try container.encode(optionalFloat, forKey: .optionalFloat)
            try container.encode(normalCGFloat, forKey: .normalCGFloat)
            try container.encode(optionalCGFloat, forKey: .optionalCGFloat)
            try container.encode(normalDouble, forKey: .normalDouble)
            try container.encode(optionalDouble, forKey: .optionalDouble)
            try container.encode(normalBool, forKey: .normalBool)
            try container.encode(optionalBool, forKey: .optionalBool)
            try container.encode(normalDate, forKey: .normalDate)
            try container.encode(optionalDate, forKey: .optionalDate)
            try container.encode(normalUrl, forKey: .normalUrl)
            try container.encode(optionalUrl, forKey: .optionalUrl)
            try container.encode(normalStringEnum, forKey: .normalStringEnum)
            try container.encode(optionalStringEnum, forKey: .optionalStringEnum)
            try container.encode(normalIntEnum, forKey: .normalIntEnum)
            try container.encode(optionalIntEnum, forKey: .optionalIntEnum)
            try container.encode(normalChild, forKey: .normalChild)
            try container.encode(optionalChild, forKey: .optionalChild)

            try container.encode(normalChildArray, forKey: .normalChildArray)
            try container.encode(normalOptionalChildArray, forKey: .normalOptionalChildArray)
            try container.encode(optionalChildArray, forKey: .optionalChildArray)
            try container.encode(optionalOptionalChildArray, forKey: .optionalOptionalChildArray)
            try container.encode(normalChildDictionary, forKey: .normalChildDictionary)
            try container.encode(normalOptionalChildDictionary, forKey: .normalOptionalChildDictionary)
            try container.encode(optionalChildDictionary, forKey: .optionalChildDictionary)
            try container.encode(optionalOptionalChildDictionary, forKey: .optionalOptionalChildDictionary)

            try container.encode(normalIntArray, forKey: .normalIntArray)
            try container.encode(normalOptionalIntArray, forKey: .normalOptionalIntArray)
            try container.encode(optionalIntArray, forKey: .optionalIntArray)
            try container.encode(optionalOptionalIntArray, forKey: .optionalOptionalIntArray)
            try container.encode(normalIntDictionary, forKey: .normalIntDictionary)
            try container.encode(normalOptionalIntDictionary, forKey: .normalOptionalIntDictionary)
            try container.encode(optionalIntDictionary, forKey: .optionalIntDictionary)
            try container.encode(optionalOptionalIntDictionary, forKey: .optionalOptionalIntDictionary)
        }
    }
    
    func testStrictModelWithNulls() {
        
        let json: [String: Any] = [
            "normalInt":1341,
            "optionalInt":NSNull(),
            "normalFloat":24 as Float,
            "optionalFloat":NSNull(),
            "normalCGFloat":434 as CGFloat,
            "optionalCGFloat":NSNull(),
            "normalDouble":325235325 as Double,
            "optionalDouble":NSNull(),
            "normalBool":true,
            "optionalBool":NSNull(),
            "normalDate":423423432 as Double,
            "optionalDate":NSNull(),
            "normalUrl":"http://google.com",
            "optionalUrl":NSNull(),
            "normalStringEnum":"first",
            "optionalStringEnum":NSNull(),
            "normalIntEnum":1,
            "optionalIntEnum":NSNull(),
            "normalChild": ["name": "John"],
            "optionalChild":NSNull(),
            
            "normalChildArray":[["name": "John"], ["name": "Alexa"]],
            "normalOptionalChildArray": [["name": "John"] as Any, ["name": "Alexa"] as Any, NSNull() as Any],
            "optionalChildArray":NSNull(),
            "optionalOptionalChildArray":NSNull(),
            "normalChildDictionary":["first": ["name": "John"], "second": ["name": "Alexa"]],
            "normalOptionalChildDictionary":["first": ["name": "John"] as Any, "second": ["name": "Alexa"] as Any, "third": NSNull() as Any],
            "optionalChildDictionary":NSNull(),
            "optionalOptionalChildDictionary":NSNull(),
            
            "normalIntArray":[23, 32],
            "normalOptionalIntArray": [22 as Any, 32 as Any, NSNull() as Any],
            "optionalIntArray":NSNull(),
            "optionalOptionalIntArray":NSNull(),
            "normalIntDictionary":["first": 22, "second": 33],
            "normalOptionalIntDictionary":["first": 22 as Any, "second": 222 as Any, "third": NSNull() as Any],
            "optionalIntDictionary":NSNull(),
            "optionalOptionalIntDictionary":NSNull()
        ]
        
        do {
            let testJsonObject = try TestParent.decode(from: json).jsonObject()
            let refJsonObject = try TestParent.decode(from: testJsonObject).jsonObject()
            
            XCTAssertEqual(testJsonObject as! NSDictionary , refJsonObject as! NSDictionary)
        }
        catch {
            XCTFail("Unexpected error thrown: \(error)")
        }
    }
    
    func testStrictModelNSNumberWithNulls() {
        
        let json: [String: Any] = [
            "normalInt": NSNumber(value: 1341) as Any,
            "optionalInt": NSNull(),
            "normalFloat": NSNumber(value: 24) as Any,
            "optionalFloat": NSNull(),
            "normalCGFloat": NSNumber(value: 434) as Any,
            "optionalCGFloat": NSNull(),
            "normalDouble": NSNumber(value: 325235325) as Any,
            "optionalDouble":NSNull(),
            "normalBool":true,
            "optionalBool":NSNull(),
            "normalDate": NSNumber(value: 423423432) as Any,
            "optionalDate":NSNull(),
            "normalUrl":"http://google.com",
            "optionalUrl":NSNull(),
            "normalStringEnum":"first",
            "optionalStringEnum":NSNull(),
            "normalIntEnum":1,
            "optionalIntEnum":NSNull(),
            "normalChild": ["name": "John"],
            "optionalChild":NSNull(),
            "normalChildArray":[["name": "John"], ["name": "Alexa"]],
            "normalOptionalChildArray": [["name": "John"] as Any, ["name": "Alexa"] as Any, NSNull() as Any],
            "optionalChildArray":NSNull(),
            "optionalOptionalChildArray":NSNull(),
            "normalChildDictionary":["first": ["name": "John"], "second": ["name": "Alexa"]],
            "normalOptionalChildDictionary":["first": ["name": "John"] as Any, "second": ["name": "Alexa"] as Any, "third": NSNull() as Any],
            "optionalChildDictionary":NSNull(),
            "optionalOptionalChildDictionary":NSNull(),
            
            "normalIntArray":[NSNumber(value: 23), NSNumber(value: 23)],
            "normalOptionalIntArray": [NSNumber(value: 23) as Any, NSNumber(value: 23) as Any, NSNull() as Any],
            "optionalIntArray":NSNull(),
            "optionalOptionalIntArray":NSNull(),
            "normalIntDictionary":["first": NSNumber(value: 23), "second": NSNumber(value: 23)],
            "normalOptionalIntDictionary":["first": NSNumber(value: 23) as Any, "second": NSNumber(value: 23) as Any, "third": NSNull() as Any],
            "optionalIntDictionary":NSNull(),
            "optionalOptionalIntDictionary":NSNull()
        ]
        
        do {
            let testJsonObject = try TestParent.decode(from: json).jsonObject()
            let refJsonObject = try TestParent.decode(from: testJsonObject).jsonObject()
            
            XCTAssertEqual(testJsonObject as! NSDictionary , refJsonObject as! NSDictionary)
        }
        catch {
            XCTFail("Unexpected error thrown: \(error)")
        }
    }
    
    func testStrictModelNSNumberWithoutNulls() {
        
        let json: [String: Any] = [
            "normalInt": NSNumber(value: 1341) as Any,
            "optionalInt": NSNumber(value: 1341) as Any,
            "normalFloat": NSNumber(value: 24) as Any,
            "optionalFloat": NSNumber(value: 24) as Any,
            "normalCGFloat": NSNumber(value: 434) as Any,
            "optionalCGFloat": NSNumber(value: 434) as Any,
            "normalDouble": NSNumber(value: 325235325) as Any,
            "optionalDouble": NSNumber(value: 325235325) as Any,
            "normalBool":true,
            "optionalBool": true,
            "normalDate": NSNumber(value: 423423432) as Any,
            "optionalDate":NSNumber(value: 423423432) as Any,
            "normalUrl":"http://google.com",
            "optionalUrl":"http://google.com",
            "normalStringEnum":"first",
            "optionalStringEnum":"first",
            "normalIntEnum":1,
            "optionalIntEnum":1,
            "normalChild": ["name": "John"],
            "optionalChild": ["name": "John"],
            "normalChildArray":[["name": "John"], ["name": "Alexa"]],
            "normalOptionalChildArray": [["name": "John"] as Any, ["name": "Alexa"] as Any, NSNull() as Any],
            "optionalChildArray":[["name": "John"], ["name": "Alexa"]],
            "optionalOptionalChildArray":[["name": "John"] as Any, ["name": "Alexa"] as Any, NSNull() as Any],
            "normalChildDictionary":["first": ["name": "John"], "second": ["name": "Alexa"]],
            "normalOptionalChildDictionary":["first": ["name": "John"] as Any, "second": ["name": "Alexa"] as Any, "third": NSNull() as Any],
            "optionalChildDictionary":["first": ["name": "John"], "second": ["name": "Alexa"]],
            "optionalOptionalChildDictionary":["third": NSNull() as Any],
            
            "normalIntArray":[23, 32],
            "normalOptionalIntArray": [22 as Any, 32 as Any, NSNull() as Any],
            "optionalIntArray":[23, 32],
            "optionalOptionalIntArray":[22 as Any, 32 as Any, NSNull() as Any],
            "normalIntDictionary":["first": 22, "second": 33],
            "normalOptionalIntDictionary":["first": 22 as Any, "second": 222 as Any, "third": NSNull() as Any],
            "optionalIntDictionary":["first": 22, "second": 33],
            "optionalOptionalIntDictionary":["first": 22 as Any, "second": 222 as Any, "third": NSNull() as Any]
        ]
        
        do {
            let testJsonObject = try TestParent.decode(from: json).jsonObject()
            let refJsonObject = try TestParent.decode(from: testJsonObject).jsonObject()
            
            XCTAssertEqual(testJsonObject as! NSDictionary , refJsonObject as! NSDictionary)
        }
        catch {
            XCTFail("Unexpected error thrown: \(error)")
        }
        
    }
    #if os(iOS)
    func testCodableBox() {
        
        
        struct UIColorCodingConverter: CodingConvertable {
            
            static func fromDecodable(_ some: [CGFloat]) throws -> UIColor {
                return UIColor(red: some[0], green: some[1], blue: some[2], alpha: some[3])
            }
            
            static func toEncodable(_ some: UIColor) throws -> [CGFloat] {
                var r: CGFloat = 0
                var g: CGFloat = 0
                var b: CGFloat = 0
                var a: CGFloat = 0
                
                some.getRed(&r, green: &g, blue: &b, alpha: &a)
                
                return [r, g, b, a]
            }
        }
        
        typealias UIColorBox = CodableBox<UIColorCodingConverter>
        
        struct Test: Codable {
            var color: UIColorBox
        }
        
        let json: [String: Any] = ["color": [1, 0, 0, 1]]
        do {
            var t = try Test.decode(from: json)
            XCTAssertEqual(t.color.value, UIColor.red)
            XCTAssertEqual((try t.jsonObject() as! NSDictionary)["color"] as! [CGFloat], [1, 0, 0, 1])
            t.color.value = .blue
            XCTAssertEqual((try t.jsonObject() as! NSDictionary)["color"] as! [CGFloat], [0, 0, 1, 1])
        }
        catch {
            print(error)
            XCTFail("Should haven't thrown")
        }
    }
    
    #endif
    
    static var allTests = [
        ("testStrictModelNSNumberWithoutNulls", testStrictModelNSNumberWithoutNulls),
    ]
}
