//
//  RepeatingCountdownTimer.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

final class RepeatingCountdownTimer {
  
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
        
        // Invalidated before calling the completion block because the client expects the countdown timer
        // to no longer be running by the time they acccess 'timer' in the completion closure
        timer.invalidate()
        
      }
      
      completion()
      
    })
    
  }
  
  func reset() -> RepeatingCountdownTimer {
    
    return RepeatingCountdownTimer(duration, fireCount: fireCount)
    
  }
  
}
