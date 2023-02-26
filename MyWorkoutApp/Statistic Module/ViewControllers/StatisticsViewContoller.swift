//
//  StatisticsViewContoller.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 26.02.2023.
//

import UIKit

class StatisticsViewContoller : UIViewController {
    
    private let nameViewCotrollersLabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTICS"
        label.font = .robotoMedium22()
        label.textColor = .specialGray
        label.textAlignment = .center
        return label
    }()
    
    private let nameExerciseLabel = UILabel(text: "Exercises")
    
    private let statisticTableView = StatisticsTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setConstraints()
        
    }
    
    private func configure() {
        view.setView(nameViewCotrollersLabel)
        view.setView(nameExerciseLabel)
        view.setView(statisticTableView)
        view.backgroundColor = .specialBackground
    }
}

extension StatisticsViewContoller {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameViewCotrollersLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nameViewCotrollersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameViewCotrollersLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            nameExerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameExerciseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nameExerciseLabel.topAnchor.constraint(equalTo: nameViewCotrollersLabel.bottomAnchor, constant: 100),
            
            statisticTableView.topAnchor.constraint(equalTo: nameExerciseLabel.bottomAnchor, constant: 5),
            statisticTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            statisticTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            statisticTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
        ])
      
    }
}
