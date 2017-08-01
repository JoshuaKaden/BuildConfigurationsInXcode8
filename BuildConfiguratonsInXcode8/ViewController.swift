//
//  ViewController.swift
//  BuildConfiguratonsInXcode8
//
//  Created by Kaden, Joshua on 8/1/17.
//  Copyright © 2017 NYC DoITT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let configurationLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurationLabel.text = Bundle.main.infoDictionary!["Configuration"] as? String
        view.addSubview(configurationLabel)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        configurationLabel.sizeToFit()
        configurationLabel.center = view.center
    }
}
