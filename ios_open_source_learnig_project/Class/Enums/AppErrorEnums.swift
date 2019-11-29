//
//  AppErrorEnums.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/11/29.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Foundation

public enum AppError: Error {
    
    public enum NetworkingError {
        
        case networkingUnavilaible
        
        case invalidUrl
        
        case serverError
    }
}
