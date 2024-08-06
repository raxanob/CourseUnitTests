//
//  StringUtils.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 30/06/24.
//

import UIKit

extension String {
    func removeWhiteSpace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    func replace(string: String, replacement: String) -> String {
        return self.replacingOccurrences(of: string,
                                         with: replacement,
                                         options: .literal,
                                         range: nil)
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
