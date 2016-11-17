//
//  HourTests.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import TimerKit

import XCTest

class HourTests: XCTestCase {
  
  func testZeroHoursYieldsCorrectSeconds() {
    
    XCTAssertEqual(Hours(0.0).timeInterval, 0.0)
    
  }
  
  func testHalfAnHourYieldsCorrectSeconds() {
    
    XCTAssertEqual(Hours(0.5).timeInterval, 0.5 * 60.0 * 60.0)
    
  }
  
  func testAnHourYieldsCorrectSeconds() {
    
    XCTAssertEqual(Hours(1.0).timeInterval, 60.0 * 60.0)
    
  }
  
}
