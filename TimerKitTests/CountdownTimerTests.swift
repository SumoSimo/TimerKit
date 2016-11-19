//
//  CountdownTimerTests.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import TimerKit

import XCTest

class CountdownTimerTests: XCTestCase {
  
  func testCountdownTimerFiresOnlyOnce() {
    
    let expectation = self.expectation(description: "The countdown timer fires only once")
    
    var timesFired = 0
    
    let countdownTimer = CountdownTimer(Seconds(0.5))
    
    countdownTimer.start(completion: { countdownTimer in
      
      timesFired += 1
      
      if !countdownTimer.isRunning {
        
        expectation.fulfill()
        
      }
      
    })
    
    waitForExpectations(timeout: 1.0, handler: { _ in
      
      if timesFired == 1 {
        
        XCTAssertTrue(true)
        
      } else {
        
        XCTFail("The countdown timer fired more than once, \(timesFired) times specifically")
        
      }
      
    })
    
  }
  
}
