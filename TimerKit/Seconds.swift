//
//  Seconds.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public struct Seconds {
  
  fileprivate let numberOfSeconds: Double
  
  public init(_ numberOfSeconds: Double) {
    
    self.numberOfSeconds = numberOfSeconds
    
  }
  
}

extension Seconds: Duration {
  
  public var timeInterval: TimeInterval {
    
    return numberOfSeconds
    
  }
  
}
