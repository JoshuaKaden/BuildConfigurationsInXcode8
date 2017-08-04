//
//  ConfigurationManager.swift
//  BuildConfiguratonsInXcode8
//
//  Created by Kaden, Joshua on 8/4/17.
//  Copyright © 2017 NYC DoITT. All rights reserved.
//

import Foundation

final class ConfigurationManager {
    lazy var environmentType: EnvironmentType = {
        guard
            let environmentValue = Bundle.main.infoDictionary!["Environment Type"] as? String,
            let type = EnvironmentType(rawValue: environmentValue)
        else {
            return .unknown
        }
        return type
    }()
}
