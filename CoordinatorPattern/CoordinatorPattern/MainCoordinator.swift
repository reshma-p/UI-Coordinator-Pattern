//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Reshma Pinto on 11/09/2019.
//  Copyright © 2019 RP. All rights reserved.
//

import Foundation
import UIKit

/// The initial coordinator
class MainCoordinator : Coordinator{
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    /// Navigation controller is set during instantiation
    init(navigationController: UINavigationController){
       self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    
    func buyThings(){
        let buyViewController = BuyViewController.instantiate()
        navigationController.pushViewController(buyViewController, animated: true)
    }
    
    func createAccount(){
        let createAccountController = CreateAccountViewController.instantiate()
        navigationController.pushViewController(createAccountController, animated: true)
    }
}
