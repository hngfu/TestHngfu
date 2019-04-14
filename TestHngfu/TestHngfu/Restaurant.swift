//
//  Restaurant.swift
//  TestHngfu
//
//  Created by 조재흥 on 19. 4. 14..
//  Copyright © 2019 hngfu. All rights reserved.
//

import Foundation

class Restaurant {
    let name: String
    let rating: Int
    
    init?(name: String, rating: Int) {
        guard 0 <= rating, rating <= 5 else { return nil }
        self.name = name
        self.rating = rating
    }
}
