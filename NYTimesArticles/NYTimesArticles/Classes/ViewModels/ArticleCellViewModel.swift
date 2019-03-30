//
//  ArticleCellViewModel.swift
//  NYTimesArticles
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//

import Foundation

struct ArticleCellViewModel {
    var title: String!
    var imageUrl: String?
    var publishedDate: Date!
    var writer: String?
    var details: String?
    
    init(article:Article) {
        self.title = article.name
        self.imageUrl = article.imageUrl
        self.publishedDate = article.publishedDate
        self.writer = article.writer
        self.details = article.details
    }
    
}

