//
//  CalendarCollectionViewCell.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 24.02.2023.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    
    private let numberOfWeeklabel: UILabel = {
        let label = UILabel()
        label.text = "20"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .robotoBold20()
        return label
    }()
    
    private let dayOfWeeklabel: UILabel = {
        let label = UILabel()
        label.text = "WE"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .robotoBold16()
        return label
    }()
    
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
