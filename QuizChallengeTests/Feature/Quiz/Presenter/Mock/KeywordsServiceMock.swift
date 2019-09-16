//
//  KeywordsServiceMock.swift
//  QuizChallengeTests
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation
@testable import QuizChallenge

class KeywordsServiceMock: KeywordsService {
    
    var keywordsResponse: Result<Keywords, QuizError>?
    
    func keywords(completion: @escaping (Result<Keywords, QuizError>) -> Void) {
        completion(keywordsResponse!)
    }
}
