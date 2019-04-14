//
//  TestHngfuTests.swift
//  TestHngfuTests
//
//  Created by 조재흥 on 19. 4. 14..
//  Copyright © 2019 hngfu. All rights reserved.
//

import XCTest

class TestHngfuTests: XCTestCase {

    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        squirtle = Pokemon(type: .water, attackType: .water)
        charmander = Pokemon(type: .fire, attackType: .fire)
        psyduck = Pokemon(type: .water, attackType: .water)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        squirtle = nil
        charmander = nil
        psyduck = nil
        
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
        squirtle.attack(enemy: charmander)
        squirtle.attack(enemy: psyduck)
        
        XCTAssertTrue(charmander.health < psyduck.health)
    }
}
