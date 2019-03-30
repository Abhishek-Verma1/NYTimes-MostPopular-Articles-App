//
//  RequestFactory.swift
//  NYTimesArticles
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//

import Foundation

final class RequestFactory {
    
    enum Method: String {
        case GET
        case POST
    }
    
    static func request(method: Method, url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
    
}
