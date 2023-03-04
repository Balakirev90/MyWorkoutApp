//
//  StatisticsViewContoller.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 26.02.2023.
//

import UIKit

class StatisticsViewContoller : UIViewController {
    
    private let nameViewCotrollersLabel = UILabel(text: "STATISTICS", font: .robotoMedium22(), textColor: .specialGray)
    
    private lazy var statiscticSegmentControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: ["Week", "Month"])
        segmentControl.selectedSegmentIndex = 0
        segmentControl.backgroundColor = .specialGreen
        segmentControl.selectedSegmentTintColor = .specialYellow
        let font = UIFont(name: "Roboto-Medium", size: 16)
        segmentControl.setTitleTextAttributes([.font : font as Any,
                                               .foregroundColor: UIColor.white], for: .normal)
        segmentControl.setTitleTextAttributes([.font : font as Any,
                                               .foregroundColor: UIColor.specialGray], for: .selected)
        return segmentControl
    }()
    
    private let exerciseLabel = UILabel(text: "Exercises", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let statisticTableView = StatisticsTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setConstraints()
        
    }
    
    private func configure() {
        view.setView(nameViewCotrollersLabel)
        view.setView(exerciseLabel)
        view.setView(statisticTableView)
        view.backgroundColor = .specialBackground
        view.setView(statiscticSegmentControl)
        nameViewCotrollersLabel.textAlignment = .center
    }
}

extension StatisticsViewContoller {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameViewCotrollersLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nameViewCotrollersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameViewCotrollersLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            exerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            exerciseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            exerciseLabel.topAnchor.constraint(equalTo: nameViewCotrollersLabel.bottomAnchor, constant: 100),
            
            statisticTableView.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 0),
            statisticTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            statisticTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            statisticTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            statiscticSegmentControl.topAnchor.constraint(equalTo: nameViewCotrollersLabel.bottomAnchor, constant: 30),
            statiscticSegmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            statiscticSegmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
      
    }
}
