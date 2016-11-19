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
  
  public convenience init(_ duration: Duration, fireCount: Int) {
    
    self.init(RepeatingCountdownTimer(duration, fireCount: fireCount))
    
  }
  
  private init(_ countdownTimer: STCountdownTimer) {
    
    self.countdownTimer = countdownTimer
    
  }
  
  public var isRunning: Bool {
    
    return countdownTimer.isRunning
    
  }
  
  public func start(completion: @escaping (CountdownTimer) -> Void = { _ in }) {
    
    countdownTimer.start(completion: { [weak self] in
      
      guard let `self` = self else {
        
        return
        
      }
      
      completion(self)
      
    })
    
  }
  
  public func reset() -> CountdownTimer {
    
    return CountdownTimer(countdownTimer.reset())
    
  }
  
}

public protocol Duration {
  
  var timeInterval: TimeInterval { get }
  
}

protocol STCountdownTimer {
  
  var isRunning: Bool { get }
  
  func start(completion: @escaping () -> Void)
  
  func reset() -> STCountdownTimer
  
}
