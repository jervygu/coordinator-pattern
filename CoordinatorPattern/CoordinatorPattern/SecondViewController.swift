//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Jervy Umandap on 6/4/24.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Second"
        view.backgroundColor = .systemBlue
    }
    
}
