//
//  Networking.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/11/29.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Foundation
import Moya

/// App Enviroment
public enum Enviroment {

    case debug
    
    case stagging
    
    case release
    
}

public struct Network {
    
    public static let shared = Network()

    var env:Enviroment = .debug
    
    let newsProviver = MoyaProvider<NewsApi>()
}

extension Network {
    
    func getAnyObject<P:MoyaProviderType>(provider:P) {
    }
    
    func getObjectArray() {
        
    }
    
}


