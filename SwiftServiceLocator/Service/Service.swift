//
//  Service.swift
//  SwiftServiceLocator
//
//  Created by Mathias Roikjær on 25/02/2021.
//

import Foundation

/// Service can be implemented anywhere, only the ServiceAbstraction needs to be publicly available.
class Service: ServiceAbstraction, Initializable {
    let container: IServiceContainer

    required init(container: IServiceContainer) {
        self.container = container
    }

    func doStuff() {
        print("I did stuff")
    }
}
