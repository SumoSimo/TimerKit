//
//  Days.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public struct Days {
  
  fileprivate let numberOfDays: Double
  
  public init(_ numberOfDays: Double) {
    
    self.numberOfDays = numberOfDays
    
  }
  
}

extension Days: Duration {
  
  public var timeInterval: TimeInterval {
    
    return numberOfDays * 24.0 * 60.0 * 60.0
    
  }
  
}
