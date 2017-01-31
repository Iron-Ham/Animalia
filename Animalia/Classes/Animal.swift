//
//  Animal.swift
//  Generics
//
//  Created by Hesham Salman on 1/30/17.
//  Copyright © 2017 View The Space. All rights reserved.
//

import Foundation

public protocol Animal {
    associatedtype Food: FoodType
    func eat(food: Food)
    var numberOfLimbs: Int { get } 

    /// Following are handled through their associated protocols
    /// Don't implement these if you don't have to
    var isVertebrate: Bool { get }          // Vertebrate / Invertebrate
    var canSwim: Bool { get }               // Swimmable
    var canBreatheUnderwater: Bool { get }  // WaterBreathable
    var canFly: Bool { get }
}

extension Animal {
    public var canSwim: Bool { return self is Swimmable }
    public var isVertebrate: Bool { return self is Vertebrate }
    public var canBreatheUnderwater: Bool { return self is WaterBreathable }
    public var canFly: Bool { return self is Flyable } 
}

/// Type Erasure Pattern One
public struct AnyAnimal<Food: FoodType>: Animal {
    private let _canSwim: Bool
    private let _isVertebrate: Bool
    private let _canBreatheUnderwater: Bool
    private let _eat: (Food) -> Void

    public init<Base: Animal>(_ base: Base) where Food == Base.Food {
        _eat = base.eat
        numberOfLimbs = base.numberOfLimbs
        _canSwim = base.canSwim
        _canBreatheUnderwater = base.canBreatheUnderwater
        _isVertebrate = base.isVertebrate
    }

    public var numberOfLimbs: Int
    public func eat(food: Food) { _eat(food) }
    public var canSwim: Bool { return _canSwim }
    public var canBreatheUnderwater: Bool { return _canBreatheUnderwater }
    public var isVertebrate: Bool { return _isVertebrate }
}
