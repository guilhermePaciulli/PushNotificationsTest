//
//  PushNotificationsHandler.swift
//  PushNotifications
//
//  Created by Guilherme Paciulli on 17/05/17.
//  Copyright © 2017 Guilherme Paciulli. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

extension AppDelegate {
    
    func askForNotifications(app: UIApplication) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]){
            (granted,error) in
            if granted{
                app.registerForRemoteNotifications()
            } else {
                print("User Notification permission denied: \(String(describing: error?.localizedDescription))")
            }
            
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print(tokenString(deviceToken))
    }
    
    func tokenString(_ deviceToken:Data) -> String{
        let bytes = [UInt8](deviceToken)
        var token = ""
        for byte in bytes{
            token += String(format: "%02x",byte)
        }
        return token
    }
    
}
