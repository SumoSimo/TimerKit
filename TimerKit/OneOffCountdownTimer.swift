//
//  OneOffCountdownTimer.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

class OneOffCountdownTimer {
  
  fileprivate let duration: Duration
  
  init(_ duration: Duration) {
    
    self.duration = duration
    
  }
  
}

extension OneOffCountdownTimer: STCountdownTimer {
  
  func start(completion: @escaping () -> Void) {
    
    Timer.scheduledTimer(withTimeInterval: duration.timeInterval, repeats: false, block: { _ in
      
      completion()
      
    })
    
  }
  
  func reset() -> STCountdownTimer {
    
    return OneOffCountdownTimer(duration)
    
  }
  
}
