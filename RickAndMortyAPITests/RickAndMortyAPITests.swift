//
//  RickAndMortyAPITests.swift
//  RickAndMortyAPITests
//
//  Created by Sara Diaz Perez on 14/6/23.
//

import XCTest
import Combine
@testable import RickAndMortyAPI

final class RickAndMortyAPITests: XCTestCase {
    
    override func setUp() {
        
    }
    
    
    override func tearDown() {
        
    }
    
    
    var subscriptions = Set<AnyCancellable>()
    
    func test_getting_characters_success() {
        let result = Result<RickAndMortyResponse, APIError>.success(RickAndMortyResponse.createDefault())
        
        let fetcher = NetworkManager(service: APIMockService(result: result))
        
        let promise = expectation(description: "getting characters")
        
        fetcher.$decodeResponse.sink { characters in
            if characters != nil {
                promise.fulfill()
            }
        }.store(in: &subscriptions)
        
        wait(for: [promise], timeout: 2)
    }
    

    func test_loading_error() {
        let result = Result<RickAndMortyResponse, APIError>.failure(APIError.badURL)
        
        let fetcher = NetworkManager(service: APIMockService(result: result))
        
        let promise = expectation(description: "show error message")
        fetcher.$characterArray.sink { characters in
            if !characters.isEmpty {
                XCTFail()
            }
            
        }.store(in: &subscriptions)
        
        fetcher.$errorMessage.sink { message in
            if message != nil {
                promise.fulfill()
            }
        }.store(in: &subscriptions)
    
        wait(for: [promise], timeout: 2)
    }
    

}
