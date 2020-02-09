//
//  ViewController.swift
//  Confetti
//
//  Created by Tsering Lama on 12/5/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import UIKit
import SAConfettiView

class ViewController: UIViewController {
    
    lazy var birthdayLabel: UILabel = {
       let label = UILabel()
        label.text = "HAPPY BIRTHDAY TO ME"
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let confettiView = SAConfettiView(frame: view.self.bounds)
        confettiView.type = .Diamond
        view.backgroundColor = .systemRed
        view.addSubview(confettiView)
        confettiView.startConfetti()
        setupLabel()
    }
    
    private func setupLabel() {
        view.addSubview(birthdayLabel)
        birthdayLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            birthdayLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            birthdayLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }


}

