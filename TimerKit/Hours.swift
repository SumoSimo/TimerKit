//
//  Hours.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public struct Hours {
  
  fileprivate let numberOfHours: Double
  
  public init(_ numberOfHours: Double) {
    
    self.numberOfHours = numberOfHours
    
  }
  
}

extension Hours: Duration {
  
  public var timeInterval: TimeInterval {
    
    return numberOfHours * 60.0 * 60.0
    
  }
  
}
