//
//  ViewController.swift
//  BuildConfiguratonsInXcode8
//
//  Created by Kaden, Joshua on 8/1/17.
//  Copyright © 2017 NYC DoITT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let configurationManager = ConfigurationManager()
    private var environmentLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let environmentValue = configurationManager.environmentType.rawValue
        environmentLabel.text = "Environment Type: \(environmentValue)"
        view.addSubview(environmentLabel)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        environmentLabel.sizeToFit()
        environmentLabel.center = view.center
    }
}
