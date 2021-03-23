//
//  CharacterCard.swift
//  struct
//
//  Created by Austin Fooce on 3/23/21.
//  Copyright © 2021 DaFooce. All rights reserved.
//

import Foundation

struct CharacterCard {
    var hearts: Int
    var rope: Int
    var playerCharacter: PlayerCharacter
    
    
    
    mutating func removeHeart() -> Int {
        hearts -= 1
        return hearts
    }
    mutating func addHeart() -> Int {
        hearts += 1
        return hearts
    }
    mutating func addRope() -> Int {
        rope += 1
        return rope
    }
    mutating func removeRope() -> Int {
        rope -= 1
        return rope
    }
    mutating func modStat(stat: Stat) -> String {
        switch stat {
        case .addRope:
            rope += 1
            return "added one rope"
        case .removeRope:
            rope -= 1
            if self.rope <= 0 {
            return "you are dead"
            } else {
            return "removed one rope"
            }
        case .addHeart:
            hearts += 1
            return "added one heart"
        case .removeHeart:
            hearts -= 1
            if self.hearts <= 0 {
            return "you are dead"
            } else {
            return "removed one heart"
        }
        }
    }
    enum Stat {
        case addHeart, addRope, removeHeart, removeRope
    }
    
    init(character: PlayerCharacter) {
        self.playerCharacter = character
    //    setValuesForplayer(pc: character)
        switch character {
        case .electrician:
            self.hearts = 6
            self.rope = 4
        case .medic:
            self.hearts = 4
            self.rope = 5
        case .navigator:
            self.hearts = 4
            self.rope = 4
        case .surveyor:
            self.hearts = 5
            self.rope = 5
        case .knotSmith:
            self.hearts = 5
            self.rope = 4
        case .climber:
            self.hearts = 4
            self.rope = 6
        }
    }
    
    enum PlayerCharacter {
        case electrician, medic, knotSmith, navigator, climber, surveyor
    }
}
