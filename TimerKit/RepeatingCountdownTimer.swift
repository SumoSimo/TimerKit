//
//  RepeatingCountdownTimer.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

class RepeatingCountdownTimer {
  
  fileprivate let duration: Duration
  
  fileprivate let fireCount: Int
  
  fileprivate var timesFired = 0
  
  fileprivate var timer: Timer?
  
  init(_ duration: Duration, fireCount: Int) {
    
    self.duration = duration
    
    self.fireCount = fireCount
    
  }
  
}

extension RepeatingCountdownTimer: STCountdownTimer {
  
  var isRunning: Bool {
    
    return timer?.isValid ?? false
    
  }
  
  func start(completion: @escaping () -> Void) {
    
    timer = Timer.scheduledTimer(withTimeInterval: duration.timeInterval, repeats: true, block: { [weak self] timer in
      
      self?.timesFired += 1
      
      if self?.timesFired == self?.fireCount {
        
        timer.invalidate()
        
      }
      
      completion()
      
    })
    
  }
  
  func reset() -> STCountdownTimer {
    
    return RepeatingCountdownTimer(duration, fireCount: fireCount)
    
  }
  
}
