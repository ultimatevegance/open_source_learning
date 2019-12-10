//
//  APIProvider.swift
//  ios_open_source_learnig_project
//
//  Created by Justus woolworth on 2019/12/10.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import Foundation

//MARK: -API Provider

public enum GitHub {
    
    case zen
    
    case userProfile(String)
    
    case userRepositories(String)
}

