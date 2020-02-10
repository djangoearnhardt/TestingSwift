//
//  User.swift
//  First
//
//  Created by Sam Lobue on 2/9/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import Foundation

struct User {
    
    //    static let upgradedNotification = Notification.Name("UserUpgraded")
    //
    //    func upgrade() {
    //        DispatchQueue.global().async {
    //            Thread.sleep(forTimeInterval: 1)
    //            let center = NotificationCenter.default
    //            center.post(name: User.upgradedNotification, object: nil)
    //        }
    //    }
    
    static let upgradedNotification = Notification.Name("UserUpgraded")
    
    func upgrade(using center: NotificationCenter = NotificationCenter.default) {
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 1)
            center.post(name: User.upgradedNotification, object: nil, userInfo: ["level": "gold"])
        }
    }
}
