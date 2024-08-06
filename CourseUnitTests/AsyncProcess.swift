//
//  AsyncProcess.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 30/07/24.
//

import UIKit

class AsyncProcess {
    var name = ""
    
    func doStuff(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            completion("Curso")
        }
    }
    
    func callThatResultsInSideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "Curso"
        }
    }
}
