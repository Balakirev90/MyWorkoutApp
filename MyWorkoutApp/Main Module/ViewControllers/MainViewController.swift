//
//  ViewController.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 21.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let topView = MainTopView()
    
    private let workoutTodayLabel = UILabel(textSize14: "Workout Today")
    
    private let mainTableView = MainTableView()
    
    private lazy var addWorkoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.backgroundColor = .specialYellow
        button.tintColor = .specialDarkGreen
        button.setTitle("Add workout", for: .normal)
        button.setImage(Resources.Image.plusImage, for: .normal)
        button.titleLabel?.font = .robotoMedium12()
        button.imageEdgeInsets = .init(top: 0,
                                       left: 20,
                                       bottom: 15,
                                       right: 0)
        button.titleEdgeInsets = .init(top: 50,
                                       left: -40,
                                       bottom: 0,
                                       right: 0)
        button.addShadowOnView()
        button.addTarget(self, action: #selector(addWorkoutButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let weatherView = WeatherView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        view.setView(topView)
        view.setView(addWorkoutButton)
        view.setView(weatherView)
        view.setView(workoutTodayLabel)
        view.setView(mainTableView)
    }
    
  
    
    @objc private func addWorkoutButtonTapped() {
        let newWorkoutVC = NewWorkoutViewController()
        newWorkoutVC.modalPresentationStyle = .fullScreen
        present(newWorkoutVC, animated: true)
    }
    
}

extension MainViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            topView.heightAnchor.constraint(equalToConstant: 120),
            
            addWorkoutButton.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            addWorkoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 80),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 80),
            
            weatherView.leadingAnchor.constraint(equalTo: addWorkoutButton.trailingAnchor, constant: 10),
            weatherView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            weatherView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            weatherView.heightAnchor.constraint(equalToConstant: 80),
            
            workoutTodayLabel.topAnchor.constraint(equalTo: addWorkoutButton.bottomAnchor, constant: 10),
            workoutTodayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            workoutTodayLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: 10),
            
            mainTableView.topAnchor.constraint(equalTo: workoutTodayLabel.bottomAnchor, constant: 5),
            mainTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
