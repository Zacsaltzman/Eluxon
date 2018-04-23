//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Zack Saltzman on 3/6/18.
//  Copyright © 2018 Zack Saltzman. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off

    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
