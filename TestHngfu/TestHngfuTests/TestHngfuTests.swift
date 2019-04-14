//
//  TestHngfuTests.swift
//  TestHngfuTests
//
//  Created by 조재흥 on 19. 4. 14..
//  Copyright © 2019 hngfu. All rights reserved.
//

import XCTest

class TestHngfuTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.

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
    
    func testAttackFireTypeWithWaterAttackType() {
        
        //given
        let charmander = Pokemon(type: .fire, attackType: .fire)
        let squirtle = Pokemon(type: .water, attackType: .water)
        
        //when
        squirtle.attack(enemy: charmander)
        
        //then
        XCTAssertTrue(charmander.health == 40, "물타입으로 불타입을 때렸으면 40이 남아야하는데 뭔가 잘 못됨.")
    }
}
