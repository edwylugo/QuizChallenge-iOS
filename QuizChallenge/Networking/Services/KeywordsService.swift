//
//  KeywordsService.swift
//  QuizChallenge
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Foundation

protocol KeywordsService {
    func keywords(completion: @escaping (Result<Keywords, QuizError>) -> Void)
}

class KeywordsServiceImpl: KeywordsService {
    
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClientImpl()) {
        self.apiClient = apiClient
    }
    
    func keywords(completion: @escaping (Result<Keywords, QuizError>) -> Void) {
        let endpoint = KeywordsEndpoint()
        apiClient.request(endpoint, completion: completion)
    }
}

