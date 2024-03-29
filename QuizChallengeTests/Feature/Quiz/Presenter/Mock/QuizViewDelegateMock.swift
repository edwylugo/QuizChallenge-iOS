//
//  QuizViewDelegateMock.swift
//  QuizChallengeTests
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation
@testable import QuizChallenge

class QuizViewDelegateMock: QuizViewDelegate {
    var state: ViewState = .loading
    
    var isClearTextFieldCalled = false
    var isUpdateAnswersCalled = false
    var isUpdateQuizTitleCalled = false
    var isSetButtonTitleCalled = false
    var isSetTextfieldEnabledCalled = false
    var isDisplayTimerCalled = false
    var isDisplayScoreCalled = false
    var isShowAlertCalled = false
    
    
    func clearTextField() {
        isClearTextFieldCalled = true
    }
    
    func updateAnswers(with answers: [String]) {
        isUpdateAnswersCalled = true
    }
    
    func updateQuizTitle(with title: String) {
        isUpdateQuizTitleCalled = true
    }
    
    func setButtonTitle(text: String) {
        isSetButtonTitleCalled = true
    }
    
    func setTextfieldEnabled(_ enabled: Bool) {
        isSetTextfieldEnabledCalled = true
    }
    
    func displayTimer(text: String) {
        isDisplayTimerCalled = true
    }
    
    func displayScore(text: String) {
        isDisplayScoreCalled = true
    }
    
    func showAlert(with title: String, text: String, buttonTitle: String, action: (() -> Void)?) {
        isShowAlertCalled = true
    }
}

