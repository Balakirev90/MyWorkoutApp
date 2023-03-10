//
//  StatisticsTableViewCell.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 26.02.2023.
//

import UIKit

class StatisticsTableViewCell: UITableViewCell {
    
    static let idStatisticsTableViewCell = "idStatisticsableViewCell"
    
    private let exerciseNameLabel = UILabel(text: "Biceps",
                                            font: .robotoMedium24(),
                                            textColor: .specialGray)
    
    private let beforeLabel = UILabel(text: "Before: 18",
                                      font: .robotoMedium14(),
                                      textColor: .specialLightBrown)
    
    private let nowLabel = UILabel(text: "now: 20",
                                   font: .robotoMedium14(),
                                   textColor: .specialLightBrown)
    
    private let separatorLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        return view
    }()
    
    private var labelsStackView = UIStackView()
    
    private let countReps = UILabel(text: "+2",
                                    font: .robotoMedium24(),
                                    textColor: .specialGreen)
    
    
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
        setView(separatorLineView)
        setView(exerciseNameLabel)
        labelsStackView = UIStackView(arrangedSubviews: [beforeLabel, nowLabel],
                                      axis: .horizontal,
                                      spacing: 10)
        setView(labelsStackView)
        setView(countReps)
        countReps.textAlignment = .right
        backgroundColor = .clear
        selectionStyle = .none
    }
}


extension StatisticsTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            countReps.centerYAnchor.constraint(equalTo: centerYAnchor),
            countReps.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            countReps.heightAnchor.constraint(equalToConstant: 80),
            countReps.widthAnchor.constraint(equalToConstant: 80),
            
            exerciseNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            exerciseNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            exerciseNameLabel.trailingAnchor.constraint(equalTo: countReps.leadingAnchor, constant: -10),
            
            labelsStackView.topAnchor.constraint(equalTo: exerciseNameLabel.bottomAnchor, constant: 5),
            labelsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            separatorLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            separatorLineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            separatorLineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            separatorLineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

