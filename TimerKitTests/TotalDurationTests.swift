//
//  TotalDurationTests.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import TimerKit

import XCTest

class TotalDurationTests: XCTestCase {
  
  func testTotalDurationYieldsCorrectSeconds() {
    
    let totalDuration = TotalDuration([Days(1.0), Hours(40.0), Minutes(2.0), Seconds(0.75)])
    
    XCTAssertEqual(totalDuration.timeInterval, 24.0 * 60.0 * 60.0 + 40.0 * 60.0 * 60.0 + 2.0 * 60.0 + 0.75)
    
  }
  
}
