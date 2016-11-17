//
//  TotalDuration.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public struct TotalDuration {
  
  fileprivate let durations: [Duration]
  
  public init(_ durations: [Duration]) {
    
    self.durations = durations
    
  }
  
}

extension TotalDuration: Duration {
  
  public var timeInterval: TimeInterval {
    
    var totalSeconds = 0.0
    
    for duration in durations {
      
      totalSeconds += duration.timeInterval
      
    }
    
    return totalSeconds
    
  }
  
}
