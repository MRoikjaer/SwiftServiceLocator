//
//  SingletonService.swift
//  SwiftServiceLocator
//
//  Created by Mathias Roikjær on 25/02/2021.
//

import Foundation

/// Singleton Service definition.
struct SingletonService {
    private let implementation: Initializable.Type
    private var instance: Any?

    internal init(implementation: Initializable.Type) {
        self.implementation = implementation
        self.instance = nil
    }

    func getInstance() -> Any? {
        return instance
    }

    mutating func createInstance(container: IServiceContainer) -> SingletonService {
        if instance == nil {
            instance = implementation.init(container: container)
        }

        return self
    }
}
