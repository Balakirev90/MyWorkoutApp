//
//  StatisticsTableViewCell.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 26.02.2023.
//

import UIKit

class StatisticsTableViewCell: UITableViewCell {
    
    static let idStatisticsTableViewCell = "idStatisticsableViewCell"
    
    private let exerciseNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Biceps"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        return label
    }()
    
    private let beforeLabel = UILabel(text: "Before: 18")
    private let nowLabel = UILabel(text: "now: 20")
    
    private let separatorLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        return view
    }()
    
    private var labelsStackView = UIStackView()
    
    private let countReps: UILabel = {
        let label = UILabel()
        label.text = "+2"
        label.font = .robotoMedium24()
        label.textColor = .specialGreen
        return label
    }()
    
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
        backgroundColor = .clear
        selectionStyle = .none
    }
}


extension StatisticsTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            separatorLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            separatorLineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            separatorLineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            separatorLineView.heightAnchor.constraint(equalToConstant: 1),
            
            exerciseNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            exerciseNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            exerciseNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            labelsStackView.topAnchor.constraint(equalTo: exerciseNameLabel.bottomAnchor, constant: 10),
            labelsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            countReps.centerYAnchor.constraint(equalTo: centerYAnchor),
            countReps.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5)
        ])
    }
}

