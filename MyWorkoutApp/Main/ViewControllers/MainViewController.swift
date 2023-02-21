//
//  ViewController.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 21.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let topView = MainTopView()
    
    private lazy var addWorkoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.backgroundColor = Resources.Colors.workoutButton
        button.tintColor = Resources.Colors.workoutButtonTint
        button.setTitle("Add workout", for: .normal)
        button.setImage(Resources.Image.plusImage, for: .normal)
        button.imageEdgeInsets = .init(top: 0,
                                       left: 20,
                                       bottom: 15,
                                       right: 0)
        button.titleEdgeInsets = .init(top: 50,
                                       left: -40,
                                       bottom: 0,
                                       right: 0)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = Resources.Colors.backgroundVC
        view.setView(topView)
        view.setView(addWorkoutButton)
    }
    
}

extension MainViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            topView.heightAnchor.constraint(equalToConstant: 120),
            
            addWorkoutButton.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 8),
            addWorkoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 80),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
}
