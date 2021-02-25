//
//  IService.swift
//  SwiftServiceLocator
//
//  Created by Mathias Roikjær on 25/02/2021.
//

import Foundation

/// Expose ServiceAbstraction protocol rather than Service Implementation
public protocol ServiceAbstraction {
    func doStuff()
}
