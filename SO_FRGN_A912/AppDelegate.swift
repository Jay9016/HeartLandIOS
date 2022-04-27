//
//  AppDelegate.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 11/29/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit
import CoreData
import IQKeyboardManagerSwift


extension UIApplication {
    var statusBarUIView: UIView? {

            if #available(iOS 13.0, *) {
                let tag = 3848245

                let keyWindow: UIWindow? = UIApplication.shared.windows.filter {$0.isKeyWindow}.first

                if let statusBar = keyWindow?.viewWithTag(tag) {
                    return statusBar
                } else {
                    let height = keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? .zero
                    let statusBarView = UIView(frame: height)
                    statusBarView.tag = tag
                    statusBarView.layer.zPosition = 999999

                    keyWindow?.addSubview(statusBarView)
                    return statusBarView
                }

            } else {

                if responds(to: Selector(("statusBar"))) {
                    return value(forKey: "statusBar") as? UIView
                }
            }
            return nil
          }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
//        IQKeyboardManager.shared.enable = true
        
//        UserDefaults.standard.set("", forKey: "Name")
//        UserDefaults.standard.set("", forKey: "mobile")
//        UserDefaults.standard.set("", forKey: "email")
//        UserDefaults.standard.set(false, forKey: "IsInfoSave")
        
        UIApplication.shared.statusBarUIView?.backgroundColor = .black
        
        UINavigationBar.appearance().backgroundColor = .black // backgorund color with gradient
        // or
        UINavigationBar.appearance().barTintColor = .green  // solid color
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
//        UserDefaults.standard.set("", forKey: "Name")
//        UserDefaults.standard.set("", forKey: "mobile")
//        UserDefaults.standard.set("", forKey: "email")
//        UserDefaults.standard.set(false, forKey: "IsInfoSave")
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "SO_FRGN_A912")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        return true
    }
    func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        return true
    }
}
