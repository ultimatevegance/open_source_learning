//
//  GithubAPI.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/11/29.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Foundation
import Alamofire

extension GitHub: RESTFullAPIProvider {
    public var validationType: ValidationType {
        <#code#>
    }
    
    public var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
    
    public var path: String {
        switch self {
        case .zen:
            return "/zen"
        case .userProfile(let name):
            return "/users/\(name.urlEscaped)"
        case .userRepositories(let name):
            return "/users/\(name.urlEscaped)/repos"
        }
    }
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var headers: [String : String]? {
        return nil
    }
        
    public var task: HTTPTask {
        <#code#>
    }

    
}
