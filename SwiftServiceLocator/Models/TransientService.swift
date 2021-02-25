//
//  TransientService.swift
//  SwiftServiceLocator
//
//  Created by Mathias Roikjær on 25/02/2021.
//

import Foundation

struct TransientService {
    private let implementation: Initializable.Type

    internal init(implementation: Initializable.Type) {
        self.implementation = implementation
    }

    func getInstance(container: IServiceContainer) -> Initializable {
        return implementation.init(container: container)
    }
}
