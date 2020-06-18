//
//  AppDelegate.swift
//  TodoListCoredata
//
//  Created by El nino Cholo on 2020/06/17.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print("Application did finish lauching ")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    print("Application resigned")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Application did enter background")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
       print("Application entrerd for ground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Application Active")
    }

    func applicationWillTerminate(_ application: UIApplication) {
       print("Application will terminate")
    }


}

