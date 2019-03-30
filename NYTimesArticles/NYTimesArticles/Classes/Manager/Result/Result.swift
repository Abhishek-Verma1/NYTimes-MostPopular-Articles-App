//
//  Result.swift
//  NYTimesArticles
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//

import Foundation

enum Result<T, E: Error> {
    //For success case
    case success(T)
    
    //For failure case
    case failure(E)
}


