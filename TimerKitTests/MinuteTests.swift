//
//  MinuteTests.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import TimerKit

import XCTest

class MinuteTests: XCTestCase {
  
  func testZeroMinutesYieldsCorrectSeconds() {
    
    XCTAssertEqual(Minutes(0.0).timeInterval, 0.0)
    
  }
  
  func testHalfAMinuteYieldsCorrectSeconds() {
    
    XCTAssertEqual(Minutes(0.5).timeInterval, 30.0)
    
  }
  
  func testAMinutesYieldsCorrectSeconds() {
    
    XCTAssertEqual(Minutes(1.0).timeInterval, 60.0)
    
  }
  
}
