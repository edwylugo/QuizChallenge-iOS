//
//  UIViewController+Loading.swift
//  QuizChallenge
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    func startLoading(title: String = "Loading...") {
        LoadingView.shared.startLoading(on: self.view, title: title)
    }
    
    func stopLoading() {
        LoadingView.shared.stopLoading()
    }
}
