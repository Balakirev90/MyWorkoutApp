//
//  CalendarCollectionViewCell.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 24.02.2023.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    
    private let numberOfWeeklabel = UILabel(text: "20", font: .robotoBold20(), textColor: .white)
    
    private let dayOfWeeklabel = UILabel(text: "WE", font: .robotoBold16(), textColor: .white)
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                backgroundColor = .specialYellow
                layer.cornerRadius = 10
                numberOfWeeklabel.textColor = .specialDarkGreen
                dayOfWeeklabel.textColor = .specialDarkGreen
            } else {
                backgroundColor = .specialGreen
                numberOfWeeklabel.textColor = .white
                dayOfWeeklabel.textColor = .white
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        layer.cornerRadius = 10
        setView(numberOfWeeklabel)
        setView(dayOfWeeklabel)
        numberOfWeeklabel.textAlignment = .center
        dayOfWeeklabel.textAlignment = .center
    }
    
}

extension CalendarCollectionViewCell {
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            dayOfWeeklabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            dayOfWeeklabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            
            numberOfWeeklabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            numberOfWeeklabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -7)
        
        ])
    }
}
