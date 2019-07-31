//
//  BaseTapBarController.swift
//  AppStore
//
//  Created by Mohsen Abdollahi on 7/30/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class BaseTapBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        viewControllers = [createNewController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
                           createNewController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
                           createNewController(viewController: UIViewController(), title: "Apps", imageName: "apps")
                           
        ]
    }
    
    fileprivate func createNewController(viewController : UIViewController , title : String , imageName : String ) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        return navController
    }
}
