//
//  OneOffCountdownTimer.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

class OneOffCountdownTimer {
  
  fileprivate let duration: Duration
  
  fileprivate var timer: Timer?
  
  init(_ duration: Duration) {
    
    self.duration = duration
    
  }
  
}

extension OneOffCountdownTimer: STCountdownTimer {
  
  var isRunning: Bool {
    
    return timer?.isValid ?? false
    
  }
  
  func start(completion: @escaping () -> Void) {
    
    timer = Timer.scheduledTimer(withTimeInterval: duration.timeInterval, repeats: false, block: { timer in
      
      // The timer at this point still returns true for 'isValid', though technically, the timer is no longer
      // capable of being fired, even at this point in the block. Seems like Apple sets 'isValid' to false
      // after the block instead of before, which seems a little off.
      timer.invalidate()
      
      completion()
      
    })
    
  }
  
  func reset() -> STCountdownTimer {
    
    return OneOffCountdownTimer(duration)
    
  }
  
}
