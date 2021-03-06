//
//  ArticleDataSourceTests.swift
//  NYTimesArticlesTests
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//


import XCTest

@testable import NYTimesArticles

class ArticleDataSourceTests: XCTestCase {
    
    var dataSource : ArticleDataSource!
    
    override func setUp() {
        super.setUp()
        dataSource = ArticleDataSource()
    }
    
    override func tearDown() {
        dataSource = nil
        super.tearDown()
    }
    
    func testEmptyValueInDataSource() {
        
        // giving empty data value
        dataSource.data.value = []
        
        let tableView = UITableView()
        tableView.dataSource = dataSource
        
        // expected one section
        XCTAssertEqual(dataSource.numberOfSections(in: tableView), 1, "Expected one section in table view")
        
        // expected zero cells
        XCTAssertEqual(dataSource.tableView(tableView, numberOfRowsInSection: 0), 0, "Expected no cell in table view")
    }
    
    func testValueInDataSource() {
        
        // giving data value
        let dummyArticleCellVM1 = ArticleCellViewModel(article: Article(articleDict: ["title":"My title1"])!)
        let dummyArticleCellVM2 = ArticleCellViewModel(article: Article(articleDict: ["title":"My title2"])!)
        dataSource.data.value = [dummyArticleCellVM1, dummyArticleCellVM2]
        
        let tableView = UITableView()
        tableView.dataSource = dataSource
        
        // expected one section
        XCTAssertEqual(dataSource.numberOfSections(in: tableView), 1, "Expected one section in table view")
        
        // expected two cells
        XCTAssertEqual(dataSource.tableView(tableView, numberOfRowsInSection: 0), 2, "Expected two cell in table view")
    }
    
    func testValueCell() {
        // giving data value
        let dummyArticleCellVM1 = ArticleCellViewModel(article: Article(articleDict: ["title":"My title1"])!)
        dataSource.data.value = [dummyArticleCellVM1]
        
        let tableView = UITableView()
        tableView.dataSource = dataSource
        tableView.register(ArticleTableViewCell.self, forCellReuseIdentifier: kArticleCellID)
        
        let indexPath = IndexPath(row: 0, section: 0)
        
        // expected ArticleTableViewCell class
        guard let _ = dataSource.tableView(tableView, cellForRowAt: indexPath) as? ArticleTableViewCell else {
            XCTAssert(false, "Expected ArticleTableViewCell class")
            return
        }
    }
    
}

