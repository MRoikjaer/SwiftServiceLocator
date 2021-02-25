//
//  ServiceModule.swift
//  SwiftServiceLocator
//
//  Created by Mathias Roikjær on 25/02/2021.
//

import Foundation

import Foundation

public protocol ServiceModule {
    init(container: IServiceContainer)

    /// Adds Production dependencies to the container
    func registerDependencies()

    /// Adds Development Dependencies to the container
    func registerDevDependencies()
}
