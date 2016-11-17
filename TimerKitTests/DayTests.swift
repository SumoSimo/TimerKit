//
//  DayTests.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import TimerKit

import XCTest

class DayTests: XCTestCase {
  
  func testZeroDaysYieldsCorrectSeconds() {
    
    XCTAssertEqual(Days(0.0).timeInterval, 0.0)
    
  }
  
  func testHalfADayYieldsCorrectSeconds() {
    
    XCTAssertEqual(Days(0.5).timeInterval, 0.5 * 24.0 * 60.0 * 60.0)
    
  }
  
  func testOneDayYieldsCorrectSeconds() {
    
    XCTAssertEqual(Days(1.0).timeInterval, 24.0 * 60.0 * 60.0)
    
  }
  
}
