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
        // GIVEN
        let center = NotificationCenter()
        let user = User()
        let expectation = XCTNSNotificationExpectation(name: User.upgradedNotification, object: nil, notificationCenter: center)
        
        expectation.handler = { notification -> Bool in
            guard let level = notification.userInfo?["level"] as? String else {
                return false
            }
            
            if level == "gold" {
                return true
            } else {
                return false
            }
        }
        
        // WHEN
        user.upgrade(using: center)
        
        // THEN
        let result = XCTWaiter.wait(for: [expectation], timeout: 3)
        XCTAssertEqual(result, .completed)
    }
    
//    func testUserUpgradedPostsNotification() {
//        // GIVEN
//        let user = User()
//        let waiter = XCTWaiter()
//        let expectation = XCTNSNotificationExpectation(name: User.upgradedNotification)
//        expectation.handler = { notification -> Bool in
//            guard let level = notification.userInfo?["level"] as? String else { return false }
//
//            if level == "gold" {
//                return true
//            } else {
//                return false
//            }
//        }
//
//        // WHEN
//        user.upgrade()
//
//        // THEN
//        waiter.wait(for: [expectation], timeout: 3)
//    }
    
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

