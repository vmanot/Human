//
// Copyright (c) Vatsal Manot
//

import SwiftDB
import Swallow

public struct Emoji_old: CaseIterable, NSAttributeCoder, Hashable, Identifiable, SingleValueCodable, Wrapper {
    public static let allCases: [Self] = {
        let scalars = [
            0x1F601...0x1F64F,
            0x2600...0x27B0,
            0x23F0...0x23FA,
            0x1F680...0x1F6C0,
            0x1F170...0x1F251
        ].joined() + [0x231A, 0x231B, 0x2328, 0x2B50]
        
        return scalars
            .compactMap({ UnicodeScalar($0) })
            .filter({ $0.properties.isEmoji })
            .map({ .init(Character($0)) })
    }()
    
    public let value: Character
    
    public var id: some Hashable {
        value
    }
    
    public init(_ value: Character) {
        self.value = value
    }
    
    public static func toNSAttributeTypeIfPossible() -> NSAttributeType? {
        Character.toNSAttributeTypeIfPossible()
    }
}
