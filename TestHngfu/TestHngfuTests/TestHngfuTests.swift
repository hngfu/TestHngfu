//
//  TestHngfuTests.swift
//  TestHngfuTests
//
//  Created by 조재흥 on 19. 4. 14..
//  Copyright © 2019 hngfu. All rights reserved.
//

import XCTest

class TestHngfuTests: XCTestCase {

    //Restaurant 초기화 성공 메서드 만들기
    func testRestaurantInitializationSucceeds() {
        //Zero rating
        let zeroRatedRestaurant = Restaurant(name: "그런곳이 있음?", rating: 0)
        XCTAssertNotNil(zeroRatedRestaurant)
        
        //Highest positive rating
        let positiveRatedRestaurant = Restaurant(name: "모스버거", rating: 10)
        XCTAssertNotNil(positiveRatedRestaurant)
    }
    
    //Restaurant 초기화 실패 메서드 만들기
    func testRestaurantInitializationFails() {
        //Negative Rating
        let negativeRatedRestaurant = Restaurant(name: "모스버거", rating: -1)
        XCTAssertNil(negativeRatedRestaurant)
        
        //Empty String
        let emptyStringRestaurant = Restaurant(name: "", rating: 10)
        XCTAssertNil(emptyStringRestaurant)
    }
    
}
