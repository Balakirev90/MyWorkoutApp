//
//  File.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 04.03.2023.
//

import UIKit


class BackgroundView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        backgroundColor = .specialBrown
    }
    
}


