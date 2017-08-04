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
    private let urlButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let environmentValue = configurationManager.environmentType.rawValue
        urlButton.setTitle("Open \(environmentValue) URL", for: .normal)
        urlButton.setTitleColor(.blue, for: .normal)
        urlButton.addTarget(self, action: #selector(didTapUrlButton(_:)), for: .touchUpInside)
        view.addSubview(urlButton)
    }
    
    func didTapUrlButton(_ sender: UIButton) {
        guard let url = configurationManager.environmentType.serverURL() else { return }
        let message = "URL is: \(url.absoluteString)"
        let alert = UIAlertController(title: "Button Tap", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in }))
        present(alert, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        urlButton.frame.size = CGSize(width: 250, height: 60)
        urlButton.center = view.center
    }
}
