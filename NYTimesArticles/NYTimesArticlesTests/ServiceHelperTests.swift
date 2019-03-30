//
//  ServiceHelperTests.swift
//  NYTimesArticlesAppTests
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//

import XCTest

@testable import NYTimesArticles

class ServiceHelperTests: XCTestCase {
    
    func testCancelRequest() {
      
        ServiceHelper.shared.fetchArticles { (_) in
            // ignore call
        }
        ServiceHelper.shared.cancelFetchArticles()
        XCTAssertNil(ServiceHelper.shared.task, "Expected task nil")
    }
    
}
