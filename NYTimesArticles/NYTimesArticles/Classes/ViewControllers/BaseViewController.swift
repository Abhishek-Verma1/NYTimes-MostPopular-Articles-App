//
//  BaseViewController.swift
//  NYTimesArticles
//
//  Created by Abhishek Verma on 3/30/19.
//  Copyright © 2019 None. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftNavBarButton: UIBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName:"slide-icon"),style:.plain, target: self, action: nil)
        let rightNavBarButton: UIBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName:"menu"), style:.plain, target: self, action: nil)
        let searchBarButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)

        self.navigationItem.leftBarButtonItem = leftNavBarButton
        self.navigationItem.rightBarButtonItems = [rightNavBarButton,searchBarButton]
    }
    
}
