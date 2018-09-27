//
//  Created by Pavel Sharanda on 27.09.2018.
//  Copyright © 2018 CodablePlus. All rights reserved.
//

import Foundation

public protocol DecodingConvertable {
    associatedtype T
    associatedtype C: Decodable
    static func fromDecodable(_ decodable: C) throws -> T
}

public protocol EncodingConvertable {
    associatedtype T
    associatedtype C: Encodable
    static func toEncodable(_ value: T) throws -> C
}

public struct DecodableBox<D: DecodingConvertable>: Decodable {
    public var value: D.T
    
    public init(from decoder: Decoder) throws {
        let d: D.C = try decoder.singleValueContainer().decode(D.C.self)
        value = try D.fromDecodable(d)
    }
}

public struct EncodableBox<E: EncodingConvertable>: Encodable {
    public var value: E.T
    
    public init(_ value: E.T) throws {
        self.value = value
    }
    
    public func encode(to encoder: Encoder) throws {
        var c = encoder.singleValueContainer()
        try c.encode(try E.toEncodable(value))
    }
}

public protocol CodingConvertable: DecodingConvertable & EncodingConvertable { }

public struct CodableBox<DE: CodingConvertable>: Codable  {
    
    public var value: DE.T
    
    public init(from decoder: Decoder) throws {
        let d: DE.C = try decoder.singleValueContainer().decode(DE.C.self)
        value = try DE.fromDecodable(d)
    }
    
    public func encode(to encoder: Encoder) throws {
        var c = encoder.singleValueContainer()
        try c.encode(try DE.toEncodable(value))
    }
}



