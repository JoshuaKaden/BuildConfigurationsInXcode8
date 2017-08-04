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
    
    func serverURL() -> URL? {
        switch self {
        case .development:
            return URL(string: "https://dev-server.nyc.gov")
        case .production:
            return URL(string: "https://prod-server.nyc.gov")
        case .staging:
            return URL(string: "https://stg-server.nyc.gov")
        case .testing:
            return URL(string: "https://tst-server.nyc.gov")
        case .unknown:
            return nil
        }
    }
}
