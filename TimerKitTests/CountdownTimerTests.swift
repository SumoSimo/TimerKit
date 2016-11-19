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
  
  func testCountdownTimerFires() {
    
    let expectation = self.expectation(description: "The countdown timer fires")
    
    CountdownTimer(TotalDuration([Seconds(0.5)])).start(completion: {
      
      expectation.fulfill()
      
    })
    
    waitForExpectations(timeout: 1.0, handler: { error in
      
      if let error = error {
        
        XCTFail("Error: \(error)")
        
      }
      
    })
    
  }
  
}
