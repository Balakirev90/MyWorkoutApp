//
//  DateAndRepeatView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//

import UIKit

class DateAndRepeatView: UIView {
    
    let dateAndRepeatLabel = UILabel(textSize14: "Date and Repeat")
    
    let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBrown
        view.layer.cornerRadius = 10
        return view
    }()
    
    let dateLabel = UILabel(textSize18: "Date")
    
    let repeatLabel = UILabel(textSize18: "Repeat every 7 days")
    
    private var repeatStackView = UIStackView()
    private var dateStackView = UIStackView()
    
    private lazy var repeatSwitch: UISwitch = {
        let repeatSwitch = UISwitch()
        repeatSwitch.isOn = true
        repeatSwitch.onTintColor = .specialGreen
        repeatSwitch.addTarget(self, action: #selector(repeatStackViewTapped), for: .touchUpInside)
        return repeatSwitch
    }()
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = .specialBrown
        datePicker.tintColor = .specialGreen
        return datePicker
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
        dateStackView = UIStackView(arrangedSubviews: [dateLabel, datePicker], axis: .horizontal, spacing: 10)
        repeatStackView = UIStackView(arrangedSubviews: [repeatLabel, repeatSwitch], axis: .horizontal, spacing: 10)
        setView(dateAndRepeatLabel)
        setView(backgroundView)
        setView(dateStackView)
        setView(repeatStackView)
        backgroundColor = .specialBackground
        layer.cornerRadius = 10
    }
    
    @objc private func repeatStackViewTapped() {
        print("switch")
        
    }
}

extension DateAndRepeatView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dateAndRepeatLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            dateAndRepeatLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            dateAndRepeatLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
//            dateAndRepeatLabel.heightAnchor.constraint(equalToConstant: 20),
            
            backgroundView.topAnchor.constraint(equalTo: dateAndRepeatLabel.bottomAnchor, constant: 0),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
//            backgroundView.heightAnchor.constraint(equalToConstant: 100),
            
            dateStackView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 10),
            dateStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            dateStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10),
            
            repeatStackView.topAnchor.constraint(equalTo: dateStackView.bottomAnchor, constant: 10),
            repeatStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            repeatStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10)
        ])
    }

}

