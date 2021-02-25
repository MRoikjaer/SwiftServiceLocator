//
//  ServiceModuleImpl.swift
//  SwiftServiceLocator
//
//  Created by Mathias Roikjær on 25/02/2021.
//

import Foundation

public struct ServiceModuleImpl: ServiceModule {
    public let container: IServiceContainer

    public init(container: IServiceContainer) {
        self.container = container
    }

    public func registerDependencies() {
        container.addTransient(interfaceType: ServiceAbstraction.self, implementingType: Service.self)
    }

    public func registerDevDependencies() {
        container.addTransient(interfaceType: ServiceAbstraction.self, implementingType: Service.self)
    }

}
