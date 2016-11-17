//
//  Minutes.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public struct Minutes {
  
  fileprivate let numberOfMinutes: Double
  
  public init(_ numberOfMinutes: Double) {
    
    self.numberOfMinutes = numberOfMinutes
    
  }
  
}

extension Minutes: Duration {
  
  public var timeInterval: TimeInterval {
    
    return numberOfMinutes * 60.0
    
  }
  
}
