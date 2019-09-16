//
//  GameControllerMock.swift
//  QuizChallengeTests
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation
@testable import QuizChallenge

class GameControllerMock: GameController {
    
    var isStartGameCalled = false
    var isStopGameCalled = false
    var isCheckCalled = false
    
    override func startGame(with correctAnswers: [String]) {
        isStartGameCalled = true
    }
    
    override func stopGame() {
        isStopGameCalled = true
    }
    
    override func check(word: String) -> Bool {
        isCheckCalled = true
        return true
    }
}

