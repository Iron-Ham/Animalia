//
//  Food.swift
//  Generics
//
//  Created by Hesham Salman on 1/29/17.
//  Copyright © 2017 View The Space. All rights reserved.
//

import Foundation

public protocol FoodType { }

public struct AnyFood: FoodType, CustomStringConvertible {
    public var description: String {
        return "\(_food)"
    }

    private var _food: FoodType

    public init(food: FoodType) {
        self._food = food
    }
}

public struct Food: FoodType {
    public init() { }
}

public struct Meat: FoodType {
    public init() { }
}
public struct Grass: FoodType {
    public init() { }
}

