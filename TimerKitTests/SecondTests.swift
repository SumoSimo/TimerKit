//
//  SecondTests.swift
//  TimerKit
//
//  Created by Simon Tsai on 11/17/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import TimerKit

import XCTest

class SecondTests: XCTestCase {
  
  func testASecondYieldsCorrectSeconds() {
    
    XCTAssertEqual(Seconds(1.0).timeInterval, 1.0)
    
  }
  
}
