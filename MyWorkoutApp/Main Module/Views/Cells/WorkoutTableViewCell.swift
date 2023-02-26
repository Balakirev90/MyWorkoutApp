//
//  MainTableViewCell.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 25.02.2023.
//

import UIKit

class WorkoutTableViewCell: UITableViewCell {
    
    static let idTableViewCell = "idMainTableViewCell"
    
    private let backgroundCell: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .specialBrown
        return view
    }()
    
    private let workoutBackgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .specialBackground
        return view
    }()
    
    private let workoutImageView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Image.testWorkout?.withRenderingMode(.alwaysTemplate)
        view.contentMode = .scaleAspectFit
        view.tintColor = .black
        view.backgroundColor = .specialBackground
        
        return view
    }()
    
    private let workoutNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Pull Ups"
        label.font = .robotoMedium22()
        label.textColor = .specialGray
        return label
    }()
    
    private let workoutRepsLabel: UILabel = {
        let label = UILabel()
        label.text = "Reps: 10"
        label.font = .robotoMedium16()
        label.textColor = .specialGray
        return label
    }()
    
    private let workoutSetsLabel: UILabel = {
        let label = UILabel()
        label.text = "Sets: 2"
        label.font = .robotoMedium16()
        label.textColor = .specialGray
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.backgroundColor = .specialYellow
        button.tintColor = .specialDarkGreen
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = .robotoBold16()
        button.addShadowOnView()
        button.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private var labelsStackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    @objc func startButtonTapped() {
        print("startButton")
    }
    
    private func configure() {
        
        setView(backgroundCell)
        setView(workoutBackgroundView)
        workoutBackgroundView.setView(workoutImageView)
        setView(workoutNameLabel)
        setView(workoutImageView)
        labelsStackView = UIStackView(arrangedSubviews: [workoutRepsLabel, workoutSetsLabel],
                                      axis: .horizontal,
                                      spacing: 10)
    
        setView(labelsStackView)
        contentView.setView(startButton)
        
        backgroundColor = .clear
        selectionStyle = .none
    }
}


extension WorkoutTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            backgroundCell.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            backgroundCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            workoutBackgroundView.centerYAnchor.constraint(equalTo: backgroundCell.centerYAnchor),
            workoutBackgroundView.leadingAnchor.constraint(equalTo: backgroundCell.leadingAnchor, constant: 10),
            workoutBackgroundView.heightAnchor.constraint(equalToConstant: 70),
            workoutBackgroundView.widthAnchor.constraint(equalToConstant: 70),
            
            workoutImageView.topAnchor.constraint(equalTo: workoutBackgroundView.topAnchor, constant: 5),
            workoutImageView.leadingAnchor.constraint(equalTo: workoutBackgroundView.leadingAnchor, constant: 5),
            workoutImageView.trailingAnchor.constraint(equalTo: workoutBackgroundView.trailingAnchor, constant: -5),
            workoutImageView.bottomAnchor.constraint(equalTo: workoutBackgroundView.bottomAnchor, constant: -5),
            
            workoutNameLabel.leadingAnchor.constraint(equalTo:  workoutBackgroundView.trailingAnchor, constant: 8),
            workoutNameLabel.topAnchor.constraint(equalTo: backgroundCell.topAnchor, constant: 10),
            workoutNameLabel.trailingAnchor.constraint(equalTo: backgroundCell.trailingAnchor, constant: -10),
            
            labelsStackView.topAnchor.constraint(equalTo: workoutNameLabel.bottomAnchor, constant: 5),
            labelsStackView.leadingAnchor.constraint(equalTo: workoutBackgroundView.trailingAnchor, constant: 8),
            labelsStackView.heightAnchor.constraint(equalToConstant: 20),
            
            startButton.leadingAnchor.constraint(equalTo: workoutBackgroundView.trailingAnchor, constant: 10),
            startButton.topAnchor.constraint(equalTo: labelsStackView.bottomAnchor, constant: 5),
            startButton.trailingAnchor.constraint(equalTo: backgroundCell.trailingAnchor, constant: -10),
            startButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
