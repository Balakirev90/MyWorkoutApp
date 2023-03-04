//
//  BrownTextField.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 04.03.2023.
//

import UIKit



class BrownTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.borderStyle = .none
        self.layer.cornerRadius = 10
        self.textColor = .specialGray
        self.backgroundColor = .specialBrown
        self.leftView = UIView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 15,
                                                  height: 0))
        self.font = .robotoBold20()
        self.leftViewMode = .always
        self.clearButtonMode = .always
        self.returnKeyType = .done
    }
    
}

