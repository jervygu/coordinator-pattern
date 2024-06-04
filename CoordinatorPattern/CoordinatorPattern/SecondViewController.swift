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
        
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitle("Go Back!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapGoBack), for: .touchUpInside)
    }
    
    @objc func didTapGoBack() {
        coordinator?.eventOccured(with: .secondScreenButtonTapped)
    }
    
}
