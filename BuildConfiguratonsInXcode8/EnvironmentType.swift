//
//  EnvironmentType.swift
//  BuildConfiguratonsInXcode8
//
//  Created by Kaden, Joshua on 8/4/17.
//  Copyright © 2017 NYC DoITT. All rights reserved.
//

import Foundation

enum EnvironmentType: String {
    case
        development = "Development",
        production = "Production",
        staging = "Staging",
        testing = "Testing",
        unknown = "UNKNOWN"
}
