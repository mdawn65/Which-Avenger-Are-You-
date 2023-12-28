//
//  Question.swift
//  What_avenger_are_you
//
//  Created by Maggie Dong on 5/29/22.
//

import Foundation

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
    var type: ColorType
}

enum ColorType: String {
    
    case iron_man = "Iron Man", hulk = "Hulk", thor = "Thor", captain_america = "Captain America"
    
    var definition: String {
        switch self {
        case .captain_america:
            return "You're pretty reasonable and approachable, and you dedicate your life to seeking justice. You take your job seriously, and people know they can trust you to be fair."
        case .iron_man:
            return "You don't like answering to anyone, which just means you're well-equipped to handle problems on your own. You're strong, and your challenges are like a walk in the park for you."
        case .hulk:
            return "As a fierce protector of friends and family, you are always there to help out in a time of need. Sometimes seen as a bit of a loose canon but you always have the best intentions at heart."
        case .thor:
            return "You're always the star of the show-- loud, exciting, and fun to be around. Popularity comes naturally to you, but it doesn't get to your head -- your friends know that at your core, you're supre down-to-earth."
        }
    }
    func displayImage()->String {
        switch self {
        case .captain_america:
            return "captain_america.png"
        case .iron_man:
            return "iron_man.png"
        case .hulk:
            return "hulk.png"
        case .thor:
            return "thor.png"
        }
    }
}
