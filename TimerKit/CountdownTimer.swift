//
//  CountdownTimer.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public class CountdownTimer {
  
  private let countdownTimer: STCountdownTimer
  
  public convenience init(_ duration: Duration) {
    
    self.init(OneOffCountdownTimer(duration))
    
  }
  
  private init(_ countdownTimer: STCountdownTimer) {
    
    self.countdownTimer = countdownTimer
    
  }
  
  public func start(completion: @escaping () -> Void) {
    
    countdownTimer.start(completion: completion)
    
  }
  
  public func reset() -> CountdownTimer {
    
    return CountdownTimer(countdownTimer.reset())
    
  }
  
}

public protocol Duration {
  
  var timeInterval: TimeInterval { get }
  
}

protocol STCountdownTimer {
  
  func start(completion: @escaping () -> Void)
  
  func reset() -> STCountdownTimer
  
}
