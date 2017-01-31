//
//  Zoo.swift
//  Generics
//
//  Created by Hesham Salman on 1/30/17.
//  Copyright © 2017 View The Space. All rights reserved.
//

import Foundation

public struct Zoo {
    public init() { }

    public func feed<T: Animal>(animal: T, food: Meat) where T: Carnivorous {
        print("\(animal) ate some \(food)")
    }

    public func feed<T: Animal>(animal: T, food: Grass) where T: Herbivorous {
        print("\(animal) ate some \(food)")
    }

    public func feed<T: Animal>(animal: T, food: Food) where T: Omnivorous {
        print("\(animal) ate some \(food)")
    }
}
