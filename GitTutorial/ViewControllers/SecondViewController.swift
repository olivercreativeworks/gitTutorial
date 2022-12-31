//
//  SecondViewController.swift
//  GitTutorial
//
//  Created by Oliver Allen-Cummings on 12/30/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    private var button:UIButton = {
        let button = UIButton()
        button.setTitle("Click Me Too", for: .normal)
        button.backgroundColor = .systemCyan
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        self.setup()
        button.addTarget(self, action: #selector(transitionToFirstScreenOnClick), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    private func setup(){
        self.view.addSubview(self.button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.button.widthAnchor.constraint(equalToConstant: 120),
            self.button.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    @objc private func transitionToFirstScreenOnClick(){
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
