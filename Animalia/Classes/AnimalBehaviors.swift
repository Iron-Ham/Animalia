//
//  AnimalBehaviors.swift
//  Generics
//
//  Created by Hesham Salman on 1/30/17.
//  Copyright © 2017 View The Space. All rights reserved.
//

import Foundation

public protocol Slitherable { }
public protocol Flyable { }
public protocol Swimmable { }
public protocol WaterBreathable: Swimmable { }

public protocol Carnivorous { }
public protocol Herbivorous { }
public protocol Omnivorous { }

extension Carnivorous where Self: Animal {
    public func eat(food: Meat) { }
}

extension Omnivorous where Self: Animal {
    public func eat(food: AnyFood) { }
}

extension Herbivorous where Self: Animal {
    public func eat(food: Grass) { }
}
