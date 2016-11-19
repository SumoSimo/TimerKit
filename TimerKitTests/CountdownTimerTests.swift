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
  
  func testStartedCountdownTimerIsRunning() {
    
    let countdownTimer = CountdownTimer(Seconds(0.5))
    
    countdownTimer.start()
    
    XCTAssertTrue(countdownTimer.isRunning)
    
  }
  
  func testCountdownTimerThatHasFiredIsNoLongerRunning() {
    
    let expectation = self.expectation(description: "A countdown timer that has fired should no longer be running")
    
    let countdownTimer = CountdownTimer(Seconds(0.5))
    
    countdownTimer.start(completion: { countdownTimer in
      
      expectation.fulfill()
      
    })
    
    waitForExpectations(timeout: 1.0, handler: { _ in
    
      if countdownTimer.isRunning {
        
        XCTFail("The countdown timer is still running after firing")
        
      } else {
        
        XCTAssertTrue(true)
        
      }
      
    })
    
  }
  
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
  
  func testCountdownTimerFiresThreeTimes() {
    
    let expectation = self.expectation(description: "The countdown timer fires 3 times")
    
    var timesFired = 0
    
    let countdownTimer = CountdownTimer(Seconds(0.2), fireCount: 3)
    
    countdownTimer.start(completion: { countdownTimer in
      
      timesFired += 1
      
      if !countdownTimer.isRunning {
        
        expectation.fulfill()
        
      }
      
    })
    
    waitForExpectations(timeout: 1.0, handler: { _ in
    
      if timesFired == 3 {
        
        XCTAssertTrue(true)
        
      } else {
        
        XCTFail("The countdown timer did not fire 3 times like it should have. Actual times fired: \(timesFired)")
        
      }
      
    })
    
  }
  
}
