//
//  AnimalTypes.swift
//  Generics
//
//  Created by Hesham Salman on 1/29/17.
//  Copyright © 2017 View The Space. All rights reserved.
//

import Foundation

public protocol Vertebrate { }
public protocol Invertebrate { }

public protocol Reptile: Vertebrate { }
extension Reptile where Self: Animal {
    public var numberOfLimbs: Int { return self is Slitherable ? 2 : 4 }
}

public protocol Mammal: Vertebrate {
    var hasPouch: Bool { get }
}
public protocol Marsupial: Mammal { }
extension Mammal {
    public var hasPouch: Bool {
        return self is Marsupial
    }
}
extension Mammal where Self: Animal {
    public var numberOfLimbs: Int {
        return 4
    }
}

public protocol Bird: Vertebrate { }
extension Bird where Self: Animal {
    public var canFly: Bool {
        return self is Flyable
    }

    public var numberOfLimbs: Int {
        return 4
    }
}

public protocol Fish: Vertebrate, WaterBreathable { }
extension Fish where Self: Animal {
    var numberOfLimbs: Int {
        return 0
    }
}

// MARK: Convenience types

typealias BigCat = Animal & Mammal & Swimmable & Carnivorous
typealias BirdOfPrey = Animal & Bird & Flyable & Carnivorous
typealias Primate = Animal & Mammal & Swimmable & Omnivorous

