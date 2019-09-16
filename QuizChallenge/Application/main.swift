//
//  main.swift
//  QuizChallenge
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import UIKit

let kIsRunningTests = NSClassFromString("XCTestCase") != nil
let appDelegateClass = kIsRunningTests ? NSStringFromClass(TestingAppDelegate.self) : NSStringFromClass(AppDelegate.self)

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    appDelegateClass
)



