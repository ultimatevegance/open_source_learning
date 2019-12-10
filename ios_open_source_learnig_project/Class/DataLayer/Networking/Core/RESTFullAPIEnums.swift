//
//  RESTFullAPIEnums.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/11/29.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Foundation

public enum NetworkingError {
    
    case networkingUnavilaible
    
    case invalidUrl
    
    case serverError
}

/// Represents an HTTP task.
public enum HTTPTask {
    
}

/// Represents the status codes to validate through Alamofire.
public enum ValidationType {

    /// No validation.
    case none

    /// Validate success codes (only 2xx).
    case successCodes

    /// Validate success codes and redirection codes (only 2xx and 3xx).
    case successAndRedirectCodes

    /// Validate only the given status codes.
    case customCodes([Int])

    /// The list of HTTP status codes to validate.
    var statusCodes: [Int] {
        switch self {
        case .successCodes:
            return Array(200..<300)
        case .successAndRedirectCodes:
            return Array(200..<400)
        case .customCodes(let codes):
            return codes
        case .none:
            return []
        }
    }
}
