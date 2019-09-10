//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Reshma Pinto on 11/09/2019.
//  Copyright © 2019 RP. All rights reserved.
//

import Foundation
import UIKit


class MainCoordinator : Coordinator{
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
       self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
    
    
    
}
