//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Jervy Umandap on 6/4/24.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator]? = nil
    
    func eventOccured(with type: Event) {
        switch type {
        case .firstScreenButtonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            
        case .secondScreenButtonTapped:
            navigationController?.popViewController(animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
        
    } 
}
