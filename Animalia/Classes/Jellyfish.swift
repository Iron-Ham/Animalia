//
//  Jellyfish.swift
//  Generics
//
//  Created by Hesham Salman on 1/30/17.
//  Copyright © 2017 View The Space. All rights reserved.
//

import Foundation

public struct Jellyfish: Animal, Invertebrate, Herbivorous, WaterBreathable {
    public var numberOfLimbs: Int

    public init(numberOfLimbs: Int) {
        self.numberOfLimbs = numberOfLimbs
    }
}
