//
//  GithubAPI.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/11/29.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Moya

public enum NewsApi {
    case topHeadlines
    case everything(query:String?)
}

extension NewsApi:TargetType {
    
    public static let baseUrl = "https://newsapi.org/v2"
    public static let apiToken = "3046d49221d44d3083616f0eccf2e6c7"
    
    public var baseURL: URL  {
        return  try! NewsApi.baseUrl.asURL()
    }
    
    public var path: String {
        switch self {
        case .topHeadlines: return "/top-headlines"
        case .everything: return "/everything"
        }
    }
    
    public var method: Method {
        switch self {
        case .topHeadlines,
             .everything:
            return .get
        }
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .everything(let qurey):
            return .requestParameters(parameters: ["q": qurey ?? ""], encoding: URLEncoding.default)
        case .topHeadlines:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        return ["Authorization": NewsApi.apiToken]
    }
    
}


