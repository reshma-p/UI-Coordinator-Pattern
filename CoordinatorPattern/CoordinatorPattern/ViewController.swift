//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Reshma Pinto on 10/09/2019.
//  Copyright © 2019 RP. All rights reserved.
//

import UIKit

class ViewController: UIViewController,Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buy(_ sender: Any) {
        coordinator?.buyThings()
    }
    @IBAction func createAccount(_ sender: Any) {
         coordinator?.createAccount()
    }
    
}

