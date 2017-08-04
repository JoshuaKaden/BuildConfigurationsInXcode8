//
//  ViewController.swift
//  BuildConfiguratonsInXcode8
//
//  Created by Kaden, Joshua on 8/1/17.
//  Copyright © 2017 NYC DoITT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var configuratonValue = (Bundle.main.infoDictionary!["Configuration"] as? String) ?? ""
    private let configurationLabel = UILabel()
    
    private var environmentValue = (Bundle.main.infoDictionary!["ENVIRONMENT_TYPE"] as? String) ?? ""
    private var environmentLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurationLabel.text = "Configuration: \(configuratonValue)"
        view.addSubview(configurationLabel)
        
        environmentLabel.text = "Environment Type: \(environmentValue)"
        view.addSubview(environmentLabel)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        configurationLabel.sizeToFit()
        configurationLabel.center = view.center
        
        environmentLabel.sizeToFit()
        environmentLabel.frame.origin = CGPoint(x: configurationLabel.frame.origin.x, y: configurationLabel.frame.origin.y + configurationLabel.frame.size.height + 8)
    }
}
