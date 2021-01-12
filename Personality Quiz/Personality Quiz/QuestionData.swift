//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Jada Klein on 12/5/20.
//

import Foundation
import UIKit

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case lion = "🦁", elephant = "🐘", giraffe = "🦒", rhinoceros = "🦏" //instead of emoji, can use the name of a graphic
    
    var definition: String {
        switch self {
        case .lion:
            return "You are a lion: a solitary creature, very brave and protective of those you love. Your strength shines through in your natural leadership."
        case .elephant:
            return "You are a wise elephant: You are confident in what you do and have great teamwork skills. You have a calmness about you that can command the attention of a whole room."
        case .giraffe:
            return "You are a giraffe: a great and loyal friend, and a talented artist. You have an aura of grace and elegance that draws others in."
        case .rhinoceros:
            return "You are a rhinoceros: While you can be rageful and untrusting, you are also fearless and strong-headed. Though you can be a loner, you have a close-knit group."
        }
    }
}

