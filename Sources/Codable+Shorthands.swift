//
//  Created by Pavel Sharanda on 9/27/18.
//  Copyright © 2018 CodablePlus. All rights reserved.
//

import Foundation

extension JSONDecoder {
    public func decode<T>(from data: Data) throws -> T where T : Decodable {
        return try decode(T.self, from: data)
    }
}

extension KeyedDecodingContainerProtocol {
    
    @inlinable
    public func decode(key: Key) throws -> Bool {
        return try decode(Bool.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> String {
        return try decode(String.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Double {
        return try decode(Double.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Float {
        return try decode(Float.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Int {
        return try decode(Int.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Int8 {
        return try decode(Int8.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Int16 {
        return try decode(Int16.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Int32 {
        return try decode(Int32.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> Int64 {
        return try decode(Int64.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> UInt {
        return try decode(UInt.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> UInt8 {
        return try decode(UInt8.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> UInt16 {
        return try decode(UInt16.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> UInt32 {
        return try decode(UInt32.self, forKey: key)
    }
    
    @inlinable
    public func decode(key: Key) throws -> UInt64 {
        return try decode(UInt64.self, forKey: key)
    }
    
    @inlinable
    public func decode<T>(key: Key) throws -> T where T : Decodable {
        return try decode(T.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Bool? {
        return try decodeIfPresent(Bool.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> String? {
        return try decodeIfPresent(String.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Double? {
        return try decodeIfPresent(Double.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Float? {
        return try decodeIfPresent(Float.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Int? {
        return try decodeIfPresent(Int.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Int8? {
        return try decodeIfPresent(Int8.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Int16? {
        return try decodeIfPresent(Int16.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Int32? {
        return try decodeIfPresent(Int32.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> Int64? {
        return try decodeIfPresent(Int64.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> UInt? {
        return try decodeIfPresent(UInt.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> UInt8? {
        return try decodeIfPresent(UInt8.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> UInt16? {
        return try decodeIfPresent(UInt16.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> UInt32? {
        return try decodeIfPresent(UInt32.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent(key: Key) throws -> UInt64? {
        return try decodeIfPresent(UInt64.self, forKey: key)
    }
    
    @inlinable
    public func decodeIfPresent<T>(key: Key) throws -> T? where T : Decodable {
        return try decodeIfPresent(T.self, forKey: key)
    }
}

extension UnkeyedDecodingContainer {
    
    @inlinable
    public mutating func decode() throws -> Bool {
        return try decode(Bool.self)
    }
    
    @inlinable
    public mutating func decode() throws -> String {
        return try decode(String.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Double {
        return try decode(Double.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Float {
        return try decode(Float.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int {
        return try decode(Int.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int8 {
        return try decode(Int8.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int16 {
        return try decode(Int16.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int32 {
        return try decode(Int32.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int64 {
        return try decode(Int64.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt {
        return try decode(UInt.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt8 {
        return try decode(UInt8.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt16 {
        return try decode(UInt16.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt32 {
        return try decode(UInt32.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt64 {
        return try decode(UInt64.self)
    }
    
    @inlinable
    public mutating func decode<T>() throws -> T where T : Decodable {
        return try decode(T.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Bool? {
        return try decodeIfPresent(Bool.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> String? {
        return try decodeIfPresent(String.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Double? {
        return try decodeIfPresent(Double.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Float? {
        return try decodeIfPresent(Float.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Int? {
        return try decodeIfPresent(Int.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Int8? {
        return try decodeIfPresent(Int8.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Int16? {
        return try decodeIfPresent(Int16.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Int32? {
        return try decodeIfPresent(Int32.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> Int64? {
        return try decodeIfPresent(Int64.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> UInt? {
        return try decodeIfPresent(UInt.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> UInt8? {
        return try decodeIfPresent(UInt8.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> UInt16? {
        return try decodeIfPresent(UInt16.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> UInt32? {
        return try decodeIfPresent(UInt32.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent() throws -> UInt64? {
        return try decodeIfPresent(UInt64.self)
    }
    
    @inlinable
    public mutating func decodeIfPresent<T>() throws -> T? where T : Decodable {
        return try decodeIfPresent(T.self)
    }
}

extension SingleValueDecodingContainer {
    
    @inlinable
    public mutating func decode() throws -> Bool {
        return try decode(Bool.self)
    }
    
    @inlinable
    public mutating func decode() throws -> String {
        return try decode(String.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Double {
        return try decode(Double.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Float {
        return try decode(Float.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int {
        return try decode(Int.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int8 {
        return try decode(Int8.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int16 {
        return try decode(Int16.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int32 {
        return try decode(Int32.self)
    }
    
    @inlinable
    public mutating func decode() throws -> Int64 {
        return try decode(Int64.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt {
        return try decode(UInt.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt8 {
        return try decode(UInt8.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt16 {
        return try decode(UInt16.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt32 {
        return try decode(UInt32.self)
    }
    
    @inlinable
    public mutating func decode() throws -> UInt64 {
        return try decode(UInt64.self)
    }
    
    @inlinable
    public mutating func decode<T>() throws -> T where T : Decodable {
        return try decode(T.self)
    }
    
}

extension Decodable {
    public static func decode(jsonDecoder: JSONDecoder = JSONDecoder(), from data: Data) throws -> Self {
        return try jsonDecoder.decode(from: data)
    }
    
    public static func decode(jsonDecoder: JSONDecoder = JSONDecoder(), from string: String) throws -> Self {
        let data = string.data(using: .utf8) ?? Data()
        return try jsonDecoder.decode(from: data)
    }
    
    public static func decode(jsonDecoder: JSONDecoder = JSONDecoder(), from object: Any) throws -> Self {
        let data = try JSONSerialization.data(withJSONObject: object, options: [])
        return try jsonDecoder.decode(from: data)
    }
}

struct NilError: Error {}

extension Encodable {
    public func jsonData(using jsonEncoder: JSONEncoder = JSONEncoder()) throws -> Data {
        return try jsonEncoder.encode(self)
    }
    
    public func jsonString(using jsonEncoder: JSONEncoder = JSONEncoder()) throws -> String {
        let data = try jsonEncoder.encode(self)
        guard let s = String(data: data, encoding: .utf8) else {
            throw NilError()
        }
        return s
    }
    
    public func jsonObject(using jsonEncoder: JSONEncoder = JSONEncoder()) throws -> Any {
        let data = try jsonEncoder.encode(self)
        return try JSONSerialization.jsonObject(with: data, options: [])
    }
}
