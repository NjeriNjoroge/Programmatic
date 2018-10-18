//
//  FirstScreen.swift
//  Practice_Programmatic
//
//  Created by Grace Njoroge on 18/10/2018.
//  Copyright © 2018 Grace Njoroge. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.setTitle("Click ", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(handleSecondScreen), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        view.addSubview(nextButton)
        nextButtonConstrainsts()
    }
    
    @objc func handleSecondScreen() {
        let secondScreen = SecondScreen()
        secondScreen.title = "Second Screen"
        navigationController?.pushViewController(secondScreen, animated: true)
    }
    
    func nextButtonConstrainsts() {
        //need x, y, height, width
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}
