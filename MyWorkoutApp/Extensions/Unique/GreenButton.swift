//
//  GreenButton.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 04.03.2023.
//

import Foundation

import UIKit

class GreenButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    convenience init(text: String) {
        self.init(type: .system)
        self.setTitle(text, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .specialGreen
        titleLabel?.font = .robotoBold16()
        tintColor = .white
        layer.cornerRadius = 10
    }
}
