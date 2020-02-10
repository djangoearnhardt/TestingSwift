//
//  UserNotifcationTests.swift
//  FirstTests
//
//  Created by Sam Lobue on 2/9/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import XCTest
@testable import First

class UserNotificationTests: XCTest {
    
    func testUserUpgradedPostsNotification() {
       // given
       let user = User()
       let expectation = XCTNSNotificationExpectation(name: User.upgradedNotification)
    // when
       user.upgrade()
    // then

        // FIXME: Why is this not being used?
        XCTWaiter.wait(for: [expectation], timeout: 3)
    }
    
//    func testUserUpgradedPostsNotification() {
//        // GIVEN
//        let user = User()
//        let expectation = XCTNSNotificationExpectation(name: User.upgradedNotification)
//
//        // WHEN
//        user.upgrade()
//
//        // THEN
//        wait(for: [expectation], timeout: 3)
//    }
}

