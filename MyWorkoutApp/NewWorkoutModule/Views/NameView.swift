//
//  NameView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//

import UIKit

class NameView: UIView {
    
    private let nameLabel = UILabel(text: "Name", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.layer.cornerRadius = 10
        textField.textColor = .specialGray
        textField.backgroundColor = .specialBrown
        textField.leftView = UIView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 15,
                                                  height: 0))
        textField.font = .robotoBold20()
        textField.leftViewMode = .always
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView(nameLabel)
        setView(nameTextField)
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .none
        layer.cornerRadius = 10
    }
}

    extension NameView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
            nameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            nameTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
            
        ])
    }
}

