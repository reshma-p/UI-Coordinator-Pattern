//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by Reshma Pinto on 11/09/2019.
//  Copyright © 2019 RP. All rights reserved.
//

import Foundation
import UIKit

/// Protocol to load view controllers from the storyboard
protocol Storyboarded{
    
    static func instantiate() -> Self
}

/// Default implementation for Storyboarded
extension Storyboarded where Self: UIViewController{
    static func instantiate() -> Self{
        let id = String(describing: self)
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
