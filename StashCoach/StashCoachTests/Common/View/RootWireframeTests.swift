//
//  RootWireframeTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class RootWireframeTests: XCTestCase {

    private var rootWireframe: RootWireframe?
    
    override func setUp() {
        super.setUp()

        rootWireframe = RootWireframe()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testShowRootViewController() {
        let viewController = UIViewController()
        let window = UIWindow()
        window.rootViewController = UINavigationController()

        rootWireframe?.showRootViewController(viewController, in: window)

        if let rootVC = window.rootViewController as? UINavigationController {
            let firstVC = rootVC.viewControllers[0]
            XCTAssertEqual(firstVC, viewController)
        }
    }
}
