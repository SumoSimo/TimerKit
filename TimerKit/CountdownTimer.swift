//
//  CountdownTimer.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public class CountdownTimer {
  
  private let duration: Duration
  
  public init(_ duration: Duration) {
    
    self.duration = duration
    
  }
  
  public func start(completion: @escaping () -> Void) {
    
    Timer.scheduledTimer(withTimeInterval: duration.timeInterval, repeats: false, block: { _ in
      
      completion()
      
    })
    
  }
  
  public func reset() -> CountdownTimer {
    
    return CountdownTimer(duration)
    
  }
  
}

public protocol Duration {
  
  var timeInterval: TimeInterval { get }
  
}
