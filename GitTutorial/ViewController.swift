//
//  ViewController.swift
//  GitTutorial
//
//  Created by Oliver Allen-Cummings on 12/29/22.
//

import UIKit

class ViewController: UIViewController {

    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Click Me", for: .normal)
        button.backgroundColor = .systemCyan
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemRed
        
        self.view.addSubview(self.button)
        
        self.button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 120)
        ])
        // Do any additional setup after loading the view.
    }


}

