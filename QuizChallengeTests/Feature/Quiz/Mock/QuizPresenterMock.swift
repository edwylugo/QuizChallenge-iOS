//
//  QuizPresenterMock.swift
//  QuizChallengeTests
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation
@testable import QuizChallenge

class QuizPresenterMock: QuizPresenter {
    
    var isViewDidFinishLoadingCalled = false
    
    override func viewDidFinishLoading() {
        isViewDidFinishLoadingCalled = true
    }
}

