//
//  KeywordsService.swift
//  QuizChallengeTests
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import QuizChallenge

class KeywordsServiceSpecs: QuickSpec {
    
    override func spec() {
        var sut: KeywordsServiceImpl!
        var apiClientMock: APIClientMock<Keywords>!
        describe("KeywordsServiceSpecs") {
            
            beforeEach {
                apiClientMock = APIClientMock()
                sut = KeywordsServiceImpl(apiClient: apiClientMock)
            }
            
            context("When keywords is called") {
                beforeEach {
                    sut.keywords(completion: { (result) in })
                }
                
                it("Should call request from apiClient") {
                    expect(apiClientMock.isRequestCalled).to(beTrue())
                    expect(apiClientMock.endpointPassed!).to(beAKindOf(KeywordsEndpoint.self))
                }
            }
        }
    }
}
