//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Jervy Umandap on 6/4/24.
//

import Foundation
import UIKit

enum Event {
    case firstScreenButtonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    var children: [Coordinator]? { get set }
    
    func eventOccured(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
