//
//  APIClientMock.swift
//  QuizChallengeTests
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation
@testable import QuizChallenge

class APIClientMock<T: Decodable>: APIClient {
    
    var isRequestCalled = false
    var endpointPassed: Endpoint?
    
    func request<T>(_ request: Endpoint, completion: @escaping (Result<T, QuizError>) -> Void) where T : Decodable {
        isRequestCalled = true
        endpointPassed = request
    }
}
