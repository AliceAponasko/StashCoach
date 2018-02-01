//
//  UIColorExtensionTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
import UIKit
@testable import StashCoach

class UIColorExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testPurple() {
        XCTAssertEqual(UIColor.purple(), UIColor(
            red: 84.0/255.0,
            green: 25.0/255.0,
            blue: 195.0/255.0,
            alpha: 1.0))
    }
}
