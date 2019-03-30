//
//  ErrorResult.swift
//  NYTimesArticles
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//

import Foundation

enum ErrorResult: Error {
    //For network error
    case network(string: String)
    
    //For parser error
    case parser(string: String)
    
    //For custom error
    case custom(string: String)
}
