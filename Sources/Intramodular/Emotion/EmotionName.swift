//
// Copyright (c) Vatsal Manot
//

import Swift

public enum EmotionName {
    public enum Aristotelian: String, CaseIterable, Codable {
        case anger_calmness
        case friendship
        case fear_courage
        case shame_confidence
        case kindness_cruelty
        case pity
        case indignation
        case envy
        case love
    }
    
    public enum Berkley: String, CaseIterable, Codable {
        case admiration
        case adoration
        case aestheticAppreciation
        case amusement
        case anxiety
        case awe
        case awkwardness
        case boredom
        case calmness
        case confusion
        case craving
        case disgust
        case empatheticPain
        case entrancement
        case envy
        case excitement
        case fear
        case horror
        case interest
        case joy
        case nostalgia
        case romance
        case sadness
        case satisfaction
        case sexualDesire
        case sympathy
        case triump
    }
    
    public enum Plutchik: String, CaseIterable, Codable {
        case fear
        case anger
        case sadness
        case joy
        case disgust
        case surprise
        case trust
        case anticipation
    }
    
    case aristotelian(Aristotelian)
    case berkley(Berkley)
    case plutchik(Plutchik)
}
