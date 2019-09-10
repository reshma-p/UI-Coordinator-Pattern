//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Reshma Pinto on 10/09/2019.
//  Copyright © 2019 RP. All rights reserved.
//

import Foundation
import UIKit

/// This protocol defines the basic contract for a Coordinator
protocol Coordinator{
    
    var childCoordinators :[Coordinator] { get set}
    
    var navigationController : UINavigationController { get set }
    
    func start()
}
