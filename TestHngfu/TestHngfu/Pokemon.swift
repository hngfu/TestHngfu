//
//  Pokemon.swift
//  TestHngfu
//
//  Created by 조재흥 on 19. 4. 14..
//  Copyright © 2019 hngfu. All rights reserved.
//

import Foundation

class Pokemon {
    
    var health: Int = 100
    let type: PokemonType
    let attackType: PokemonAttackType
    
    init(type: PokemonType, attackType: PokemonAttackType) {
        self.type = type
        self.attackType = attackType
    }
    
    func attack(enemy: Pokemon) {
        var damage = 30
        
        if enemy.type == .fire && self.attackType == .water {
            damage = 60
        }
        
        if enemy.type == .water && self.attackType == .fire {
            damage = 10
        }
        
        enemy.health -= damage
    }
}

enum PokemonType {
    case neutral
    case fire
    case water
}

enum PokemonAttackType {
    case normal
    case fire
    case water
}
