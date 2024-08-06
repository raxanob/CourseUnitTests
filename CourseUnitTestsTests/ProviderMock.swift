//
//  ProviderMock.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 06/08/24.
//

import UIKit
@testable import CourseUnitTests

class ProviderMock: ProviderProtocol {
    
    enum Status {
        case success
        case noData
        case invalidResponse
    }
    
    let status: Status
    
    init(status: Status) {
        self.status = status
    }
    
    func getJoke(_ completion: @escaping ([String]?, CourseUnitTests.JokeError?) -> ()) {
        switch status {
        case .success:
            completion(["1", "2", "3"], nil)
        case .noData:
            completion(nil, .noData)
        case .invalidResponse:
            completion(nil, .invalidResponse)
        }
    }
}
